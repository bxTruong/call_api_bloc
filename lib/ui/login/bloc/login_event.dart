abstract class LoginEvent {}

class LoginUsernameChanged extends LoginEvent {
  late String? username;

  LoginUsernameChanged({this.username});
}

class LoginPasswordChange extends LoginEvent {
  late String? password;

  LoginPasswordChange({this.password});
}

class LoginSubmit extends LoginEvent {}

class UpdateViablePassword extends LoginEvent {
  late bool? isVisiblePassword;

  UpdateViablePassword({this.isVisiblePassword});
}
