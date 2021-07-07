import 'package:call_api_bloc/ui/third/bloc/third_bloc.dart';
import 'package:call_api_bloc/ui/third/bloc/third_state.dart';
import 'package:call_api_bloc/ui/third/third_repository/third_repository.dart';
import 'package:call_api_bloc/ui/third/view/third_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThirdListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ThirdBloc(
          ThirdState(),
          ThirdRepository(),
        ),
        child: SafeArea(
          child: ThirdPage(),
        ),
      ),
    );
  }
}
