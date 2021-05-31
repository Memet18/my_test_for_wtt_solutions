

import 'package:my_test_for_wtt_solutions/feature/domain/form_submission_status.dart';

class LoginState {
  final String username;
  bool get isValidUsername => username.length > 3;

  final String password;
  bool get isValidPassword => password.length > 6;

  final String confirmPassword;

  final FormSubmissionStatus formStatus;

  LoginState( {
    this.username = '',
    this.password = '',
    this.confirmPassword= '',
    this.formStatus = const InitialFormStatus(),
  });

  LoginState copyWith({
    String username,
    String password,
    String confirmPassword,
    FormSubmissionStatus formStatus,
  }) {
    return LoginState(
      username: username ?? this.username,
      password: password ?? this.password,
      confirmPassword:confirmPassword??this.confirmPassword,
      formStatus: formStatus ?? this.formStatus,
    );
  }
}