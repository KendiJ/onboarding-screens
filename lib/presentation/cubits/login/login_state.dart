
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';


@freezed
class LoginState with _$LoginState {
  factory LoginState.initial() = _Initial;
	factory LoginState.loading() = _Loading;
  factory LoginState.success(UserCredential user) = _Success;
  factory LoginState.fail(String error) = _Fail;
}
