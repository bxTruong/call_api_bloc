import 'package:call_api_bloc/ui/posts/posts_list/bloc/bloc.dart';
import 'package:call_api_bloc/ui/posts/posts_list/repository/post_repository.dart';
import 'package:call_api_bloc/ui/posts/posts_list/view/posts_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => PostBloc(PostState(), PostRepository()),
        child: PostsList(),
      ),
    );
  }
}
