import 'package:ne_chu_show/model/video.dart';
import 'package:ne_chu_show/repository/videos_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'videos_view_model.g.dart';

@riverpod
class VideosViewModel extends _$VideosViewModel {
  VideosRepository videosRepository = VideosRepository();

  @override
  Future<List<Video>> build() async {
    return await videosRepository.getAllVideos();
  }
}
