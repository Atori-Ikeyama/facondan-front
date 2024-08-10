import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:ne_chu_show/model/pre_post_nechu.dart';
import 'package:ne_chu_show/model/video.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ne_chu_repository.g.dart';

const String firebaseStoragePathPrefix = "https://firebasestorage.googleapis.com/v0/b/ne-chu-show.appspot.com/o/raw%2F";
const String firebaseStoragePathSuffix = "?alt=media&token=43adcac3-258d-496e-aeb1-81134acc5137";

@riverpod
class NeChuRepository extends _$NeChuRepository {
  @override
  CollectionReference build() {
    return FirebaseFirestore.instance.collection("ne_chus");
  }

  final CollectionReference _videosCollectionRef = FirebaseFirestore.instance.collection("test");

  Future<List<Video>> getAllVideos() async {
    List<Video> videos = [];

    await _videosCollectionRef.get().then(
      (QuerySnapshot<Object?> querySnapshot) {
        debugPrint(querySnapshot.docs.length.toString());
        for (var docSnapshot in querySnapshot.docs) {
          debugPrint("a");
          //videos.add(Video.fromFirestore(docSnapshot));
          //Video video = Video.fromFirestore(docSnapshot);
          //debugPrint("Video: ${video.email}, ${video.category}, ${video.date}, ${video.kissRequired}, ${video.rawStorageUrl}");
        }
      },
    );

    return videos;
  }

  Future<void> addVideo(PrePostNechu video) async {
    String firebaseUrl = firebaseStoragePathPrefix + video.filePath + firebaseStoragePathSuffix;

    try {
      await _videosCollectionRef.add(
        {
          "category": video.category,
          "date": video.date,
          "email": video.email,
          "raw_storage_url": firebaseUrl,
          "lat": video.lat,
          "lng": video.lng,
        },
      );
    } on Exception {
      throw Exception("ポストに失敗");
    }

    try {
      await ref.read(neChuStorageRepositoryProvider.notifier).uploadVideo(video);
    } on Exception {
      throw Exception("ポストに失敗");
    }
  }
}

@riverpod
class NeChuStorageRepository extends _$NeChuStorageRepository {
  @override
  FirebaseStorage build() {
    return FirebaseStorage.instance;
  }

  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

  Future<void> uploadVideo(PrePostNechu prePostNechu) async {
    try {
      await _firebaseStorage.ref("raw").child(prePostNechu.filePath).putFile(File(prePostNechu.xfile_video.path));
    } on Exception {
      throw Exception("ポストに失敗");
    }
  }
}
