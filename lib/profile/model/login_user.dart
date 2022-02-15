import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_user.freezed.dart';

@freezed
class LoginUser with _$LoginUser {
  const factory LoginUser(
    // 匿名認証を使う際はemail空になる
    String? email,
    String? name,
  ) = Data;
}

final userProvider = StateProvider<LoginUser>((ref) {
  const user = LoginUser('sample001@example.com(直書き)', '');
  return user;
});

final userEmailProvider = StateProvider<String?>((ref) => '');
