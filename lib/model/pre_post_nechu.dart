import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'pre_post_nechu.freezed.dart';

@freezed
class PrePostNechu with _$PrePostNechu {
  factory PrePostNechu({
    required String category,
    required DateTime date,
    required String email,
    required String filePath,
    required XFile xfile_video,
    required double lat,
    required double lng,
  }) = _PrePostNechu;
}
