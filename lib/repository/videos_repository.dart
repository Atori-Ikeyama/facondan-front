import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:ne_chu_show/model/video.dart';

class VideosRepository {
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

  Future<void> addVideo(Video video) async {
    await _videosCollectionRef.add({
      "category": video.category,
      "date": video.date,
      "email": video.email,
      "kiss_required": video.kissRequired,
      "raw_storage_url": video.rawStorageUrl.toString(),
      "scored_storage_url": video.scoredStorageUrl?.toString(),
      "score": video.score,
      "single_comments": video.singleComments,
      "templature": video.templature,
    });
  }
}
