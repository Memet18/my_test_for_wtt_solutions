abstract class LoginEvent {}

class LoginUsernameChanged extends LoginEvent {
  final String username;

  LoginUsernameChanged({this.username});
}

class LoginPasswordChanged extends LoginEvent {
  final String password;

  LoginPasswordChanged({this.password});
}
class LoginConfirmPasswordChanged extends LoginEvent {
  final String confirmPassword;

  LoginConfirmPasswordChanged({this.confirmPassword});
}

class LoginSubmitted extends LoginEvent {}
