import 'package:flows/presentation/cubits/login/login_state.dart';
import 'package:flows/services/auth_service/login_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(super.initialState);
  login({
    required String email,
    required String password,
  }) async {
    emit(LoginState.loading());
    try {
      var user = await LoginService.loginWithEmailandPassword(
          email: email, password: password);
      emit(LoginState.success(user));
    } catch (e) {
      emit(LoginState.fail(e.toString()));
    }
  }
}
