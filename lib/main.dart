import 'package:call_api_bloc/ui/homepage/view/home_page.dart';
import 'package:call_api_bloc/ui/login/repository/repository.dart';
import 'package:call_api_bloc/ui/login/view/login_view.dart';
import 'package:call_api_bloc/ui/posts/posts.dart';
import 'package:call_api_bloc/ui/posts/posts_list/view/post_list_view.dart';
import 'package:call_api_bloc/ui/second/view/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'commons/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RepositoryProvider(
        create: (context) => Repository(),
        child: LoginView(),
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case Routes.SECOND_PAGE:
            return MaterialPageRoute(
              builder: (context) => SecondPage(),
            );
          case Routes.POST_PAGE:
            return MaterialPageRoute(
              builder: (context) => PostPage(),
            );
          case Routes.HOME_PAGE:
            return MaterialPageRoute(
              builder: (context) {
                return HomePage();
              },
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
