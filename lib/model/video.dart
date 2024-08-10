import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video.freezed.dart';

@freezed
class Video with _$Video {
  factory Video(
      {required String category,
      required DateTime date,
      required String email,
      required bool kissRequired,
      required Uri rawStorageUrl,
      Uri? scoredStorageUrl,
      int? score,
      String? singleComments,
      int? templature}) = _Video;

  factory Video.fromFirestore(
    DocumentSnapshot<Object?> snapshot,
  ) {
    final data = snapshot.data() as Map<String, dynamic>;
    debugPrint(data.toString());
    debugPrint(
        "category: ${data['category']}, date: ${data['date']}, email: ${data['email']}, kiss_required: ${data['kiss_required']}, raw_storage_url: ${data['raw_storage_url']}");
    return Video(
      category: data['category'] as String,
      date: (data['date'] as Timestamp).toDate(),
      email: data['email'] as String,
      kissRequired: data['kiss_required'] as bool,
      rawStorageUrl: Uri.parse(data['raw_storage_url'] as String),
      scoredStorageUrl: data['scored_storage_url'] != null ? Uri.parse(data['scored_storage_url'] as String) : null,
      score: data['score'] as int?,
      singleComments: data['single_comments'] as String?,
      templature: data['templature'] as int?,
    );
  }
}
