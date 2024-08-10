import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:ne_chu_show/model/ne_chu.dart';
import 'package:ne_chu_show/model/pre_post_nechu.dart';
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

  Future<List<NeChu>> getTodayAllVideos() async {
    List<NeChu> neChus = [];
    final DateTime now = DateTime.now();

    await state.where('date', isGreaterThanOrEqualTo: DateTime(now.year, now.month, now.day)).get().then(
      (QuerySnapshot<Object?> querySnapshot) {
        for (final docSnapshot in querySnapshot.docs) {
          neChus.add(NeChu.fromFirestore(docSnapshot));
        }
      },
    );

    return neChus;
  }

  Future<List<NeChu>> getTodayAllVideosWithoutKissRequired() async {
    List<NeChu> neChus = [];
    final DateTime now = DateTime.now();

    await state
        .where('date', isGreaterThanOrEqualTo: DateTime(now.year, now.month, now.day))
        .where('kiss_required', isEqualTo: false)
        .get()
        .then(
      (QuerySnapshot<Object?> querySnapshot) {
        for (final docSnapshot in querySnapshot.docs) {
          neChus.add(NeChu.fromFirestore(docSnapshot));
        }
      },
    );

    return neChus;
  }

  Future<void> addVideo(PrePostNechu video) async {
    try {
      await ref.read(neChuRepositoryProvider.notifier).addVideo(PrePostNechu(
          category: video.category,
          date: video.date,
          email: video.email,
          filePath: video.filePath,
          xfile_video: video.xfile_video,
          lat: video.lat,
          lng: video.lng));
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
