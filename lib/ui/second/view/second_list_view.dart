import 'package:call_api_bloc/ui/second/bloc/second_bloc.dart';
import 'package:call_api_bloc/ui/second/bloc/second_state.dart';
import 'package:call_api_bloc/ui/second/second_repository/second_repository.dart';
import 'package:call_api_bloc/ui/second/view/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SecondBloc(
          SecondState(),
          SecondRepository(),
        ),
        child: SafeArea(
          child: SecondPage(),
        ),
      ),
    );
  }
}
