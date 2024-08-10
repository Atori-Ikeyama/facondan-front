import 'package:ne_chu_show/model/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

@Riverpod(keepAlive: true)
class UserProvider extends _$UserProvider {
  @override
  User build() {
    return User(email: '');
  }

  void change(User user) {
    print(user.email);
    state = user;
  }

  bool isSignined() {
    return state.email.isNotEmpty;
  }
}
