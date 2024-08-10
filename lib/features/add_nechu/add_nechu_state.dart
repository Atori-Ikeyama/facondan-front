import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

part 'add_nechu_state.freezed.dart';

@freezed
class AddNechuState with _$AddNechuState {
  factory AddNechuState({
    @Default("") String title,
    @Default("") String category,
    XFile? video,
    VideoPlayerController? videoController,
  }) = _AddNechuState;
}
