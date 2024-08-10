import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class MoviePicker {
  static Future<XFile?> PickMovie() async {
    final ImagePicker picker = ImagePicker();
    final XFile? movie = await picker.pickVideo(source: ImageSource.gallery);
    return movie;
  }
}
