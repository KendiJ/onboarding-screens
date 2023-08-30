
import 'package:flows/presentation/cubits/registration/registration_state.dart';
import 'package:flows/services/auth_service/registration_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit(super.initialState);
  register({
    required String email,
    required String password,
  }) async {
    emit(RegistrationState.loading());
    try {
      var user = await RegistrationService.registerWithEmailandPassword(
          email: email, password: password);
      emit(RegistrationState.success(user));
    } catch (e) {
      emit(RegistrationState.fail(e.toString()));
    }
  }
}
