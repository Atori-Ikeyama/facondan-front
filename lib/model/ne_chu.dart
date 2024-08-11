import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ne_chu.freezed.dart';

@freezed
class NeChu with _$NeChu {
  factory NeChu(
      {required String category,
      required DateTime date,
      required String email,
      required bool kissRequired,
      required Uri rawStorageUrl,
      required String title,
      Uri? scoredStorageUrl,
      int? score,
      int? temperature}) = _NeChu;

  factory NeChu.fromFirestore(
    DocumentSnapshot<Object?> snapshot,
  ) {
    final data = snapshot.data() as Map<String, dynamic>;
    return NeChu(
      category: data['category'] as String,
      date: (data['date'] as Timestamp).toDate(),
      email: data['email'] as String,
      kissRequired: data['kiss_required'] as bool,
      rawStorageUrl: Uri.parse(data['raw_storage_url'] as String),
      title: data['title'] as String,
      scoredStorageUrl: data['scored_storage_url'] != null ? Uri.parse(data['scored_storage_url'] as String) : null,
      score: data['score'] as int?,
      temperature: data['temperature'] as int?,
    );
  }
}
