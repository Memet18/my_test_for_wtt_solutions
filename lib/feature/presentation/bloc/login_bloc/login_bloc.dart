import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_test_for_wtt_solutions/feature/domain/form_submission_status.dart';
import 'package:my_test_for_wtt_solutions/feature/domain/login_repository/login_repository.dart';

import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository authRepo;

  LoginBloc({this.authRepo}) : super(LoginState());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    // Username updated
    if (event is LoginUsernameChanged) {
      print(event.username);
      yield state.copyWith(username: event.username);

      // Password updated
    } else if (event is LoginPasswordChanged) {
      print(event.password);
      yield state.copyWith(password: event.password);
      // Confirm Password updated

    } else if (event is LoginConfirmPasswordChanged) {
      yield state.copyWith(confirmPassword: event.confirmPassword);
      // Form submitted
    } else if (event is LoginSubmitted) {
      yield state.copyWith(formStatus: FormSubmitting());

      try {
        await authRepo.login();
        yield state.copyWith(formStatus: SubmissionSuccess());
      } catch (e) {
        yield state.copyWith(formStatus: SubmissionFailed(e));
      }
    }
  }
}
