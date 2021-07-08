import 'package:call_api_bloc/commons/utils/routes.dart';
import 'package:call_api_bloc/ui/login/bloc/form_submission_status.dart';
import 'package:call_api_bloc/ui/login/bloc/login_bloc.dart';
import 'package:call_api_bloc/ui/login/bloc/login_event.dart';
import 'package:call_api_bloc/ui/login/bloc/login_state.dart';
import 'package:call_api_bloc/ui/login/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          child: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            padding: EdgeInsets.all(8),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
        decoration: InputDecoration(
          hintText: "username",
          prefixIcon: Icon(
            Icons.person_outline,
          ),
        ),
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
        obscureText: true,
        decoration: InputDecoration(
          hintText: "password",
          prefixIcon: Icon(
            Icons.lock_outline,
          ),
          suffixIcon: IconButton(
            onPressed: () {

            },
            icon: Icon(
              Icons.remove_red_eye_rounded,
            ),
          ),
        ),
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
              Navigator.pushNamed(context, Routes.HOME_PAGE);
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
