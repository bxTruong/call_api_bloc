import 'package:call_api_bloc/posts/detail/bloc/bloc.dart';
import 'package:call_api_bloc/posts/detail/view/post_detail_page.dart';
import 'package:call_api_bloc/posts/posts_list/view/post_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'commons/utils/routes.dart';
import 'posts/detail/repository/post_detail_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PostPage(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case Routes.POST_PAGE:
            return MaterialPageRoute(
              builder: (context) => PostPage(),
            );
          case Routes.POST_DETAIL_PAGE:
            final args = settings.arguments;
            return MaterialPageRoute(
              builder: (context) {
                return BlocProvider(
                  create: (context) => PostDetailBloc(
                    postDetailRepository: PostDetailRepository(),
                  ),
                  child: PostDetailPage(id: args.toString()),
                );
              },
            );
        }
      },
    );
  }
}
