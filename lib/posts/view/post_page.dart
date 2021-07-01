import 'package:call_api_bloc/posts/bloc/post_bloc.dart';
import 'package:call_api_bloc/posts/bloc/post_state.dart';
import 'package:call_api_bloc/posts/view/posts_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Posts'),),
      body: BlocProvider(
        create: (context) => PostBloc(PostState()),
        child: PostsList(),
      ),
    );
  }

}