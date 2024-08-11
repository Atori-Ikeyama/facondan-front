import 'package:image_picker/image_picker.dart';

class MoviePicker {
  static Future<XFile?> pickMovie() async {
    final ImagePicker picker = ImagePicker();
    final XFile? movie = await picker.pickVideo(source: ImageSource.gallery);
    return movie;
  }
}
