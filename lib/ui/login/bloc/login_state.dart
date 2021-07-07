
import 'package:call_api_bloc/ui/login/bloc/form_submission_status.dart';

class LoginState {
  late String username;

  bool get isValidUser => username.length > 3;
  late String password;

  bool get isValidPassword => password.length > 6;
  final FormSubmisstionStatus formStatus;

  LoginState({
    this.username = '',
    this.password = '',
    this.formStatus = const InitialFormStatus(),
  });

  LoginState copyWith({
    String? username,
    String? password,
    FormSubmisstionStatus? status,
  }) {
    return LoginState(
        username: username ?? this.username,
        password: password ?? this.password,
        formStatus: status ?? this.formStatus);
  }
}
