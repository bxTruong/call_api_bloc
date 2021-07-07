import 'package:call_api_bloc/ui/login/bloc/form_submission_status.dart';
import 'package:call_api_bloc/ui/login/bloc/login_bloc.dart';
import 'package:call_api_bloc/ui/login/bloc/login_event.dart';
import 'package:call_api_bloc/ui/login/bloc/login_state.dart';
import 'package:call_api_bloc/ui/login/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final LoginBloc loginBloc = LoginBloc(repository: Repository());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) =>
              LoginBloc(repository: context.read<Repository>()),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  userNameFiled(),
                  _passWordFiled(),
                  loginButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget userNameFiled() {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) => TextFormField(
        decoration: InputDecoration(hintText: "username"),
        validator: (value) => state.isValidUser ? null : "username to short",
        onChanged: (value) => context
            .read<LoginBloc>()
            .add(LoginUsernameChanged(username: value)),
      ),
    );
  }

  Widget _passWordFiled() {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) => TextFormField(
        decoration: InputDecoration(hintText: "password"),
        validator: (value) =>
            state.isValidPassword ? null : "password to short",
        onChanged: (value) =>
            context.read<LoginBloc>().add(LoginPasswordChange(password: value)),
      ),
    );
  }

  Widget loginButton() {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return state.formStatus is FormSubmitting
            ? CircularProgressIndicator()
            : ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('sssssssssssss ${state.formStatus.toString()} ');
                    //loginBloc.add(LoginSubmit());
                    context.read<LoginBloc>().add(LoginSubmit());
                  }
                },
                child: Text("login"),
              );
      },
    );
  }
}
