import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:ne_chu_show/model/ne_chu.dart';

part 'ne_chu_repository.g.dart';

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

  Future<void> addNeChu(NeChu neChu) async {
    await state.add({
      "category": neChu.category,
      "date": neChu.date,
      "email": neChu.email,
      "kiss_required": neChu.kissRequired,
      "raw_storage_url": neChu.rawStorageUrl.toString(),
      "scored_storage_url": neChu.scoredStorageUrl?.toString(),
      "score": neChu.score,
      "single_comments": neChu.singleComments,
      "templature": neChu.templature,
    });
  }
}
