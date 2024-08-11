import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:ne_chu_show/model/ne_chu.dart';
import 'package:ne_chu_show/repository/ne_chu_repository.dart';

part 'home_view_model.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  Future<List<NeChu>> build() async {
    final neChuRepository = ref.read(neChuRepositoryProvider.notifier);
    List<NeChu> neChus = await neChuRepository.getTodayAllVideosWithoutKissRequired();
    //scoreが存在しないものは除外
    neChus = neChus.where((neChu) => neChu.score != null).toList();

    neChus.sort((a, b) => b.score! - a.score!);

    return neChus;
  }
}

// daily
@riverpod
List<NeChu> dailyNeChus(DailyNeChusRef ref) {
  final neChus = ref.watch(homeViewModelProvider);
  return neChus.when(
      data: (neChus) => neChus.where((neChu) => neChu.category == 'daily').toList(),
      error: (error, _) {
        debugPrint(error.toString());
        return [];
      },
      loading: () => []);
}

// sports
@riverpod
List<NeChu> sportsNeChus(SportsNeChusRef ref) {
  final neChus = ref.watch(homeViewModelProvider);
  return neChus.when(
      data: (neChus) => neChus.where((neChu) => neChu.category == 'sports').toList(),
      error: (error, _) {
        debugPrint(error.toString());
        return [];
      },
      loading: () => []);
}

// game
@riverpod
List<NeChu> gameNeChus(GameNeChusRef ref) {
  final neChus = ref.watch(homeViewModelProvider);
  return neChus.when(
      data: (neChus) => neChus.where((neChu) => neChu.category == 'game').toList(),
      error: (error, _) {
        debugPrint(error.toString());
        return [];
      },
      loading: () => []);
}

// love
@riverpod
List<NeChu> loveNeChus(LoveNeChusRef ref) {
  final neChus = ref.watch(homeViewModelProvider);
  return neChus.when(
      data: (neChus) => neChus.where((neChu) => neChu.category == 'love').toList(),
      error: (error, _) {
        debugPrint(error.toString());
        return [];
      },
      loading: () => []);
}
