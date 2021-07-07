
import 'package:call_api_bloc/ui/login/bloc/form_submission_status.dart';
import 'package:call_api_bloc/ui/login/bloc/login_state.dart';
import 'package:call_api_bloc/ui/login/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final Repository repository;

  LoginBloc({required this.repository}) : super(LoginState());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginUsernameChanged) {
      yield state.copyWith(username: event.username);
    } else if (event is LoginPasswordChange) {
      yield state.copyWith(password: event.password);
    } else if (event is LoginSubmit) {
      print('Hello may cung');
      yield state.copyWith(status: FormSubmitting());
      try {
        await repository.login();
        yield state.copyWith(status: SubmisstionSucces());
      } catch (e) {
        yield state.copyWith(status: SubmisstionFailed());
      }
    }
  }
}
