
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_state.freezed.dart';


@freezed
class RegistrationState with _$RegistrationState {
  factory RegistrationState.initial() = _Initial;
	factory RegistrationState.loading() = _Loading;
  factory RegistrationState.success(UserCredential user) = _Success;
  factory RegistrationState.fail(String error) = _Fail;
}

