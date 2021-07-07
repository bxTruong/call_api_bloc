import 'package:call_api_bloc/ui/homepage/bloc/bloc.dart';
import 'package:call_api_bloc/ui/homepage/bloc/state.dart';
import 'package:call_api_bloc/ui/login/view/login_view.dart';
import 'package:call_api_bloc/ui/posts/detail/view/post_detail_page.dart';
import 'package:call_api_bloc/ui/posts/posts.dart';
import 'package:call_api_bloc/ui/posts/posts_list/view/post_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late NavBarBloc _navBarBloc = NavBarBloc();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder(
        bloc: _navBarBloc,
        builder: (context, NavBarState state) {
          if (state is ShowFirstPage) {
            return buildHomepage(state.title, 0);
          }
          if (state is ShowSecondPage) {
            return buildHomepage(state.title, 1);
          }
          if (state is ShowThirdPage) {
            return buildHomepage(state.title, 2);
          }
          return Container();
        },
      ),
    );
  }

  buildHomepage(String title, int currentIndex) {
    print('INDEXXXXX $currentIndex');
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: Center(
          child: IndexedStack(
            index: currentIndex,
            children: [
              LoginView(),
              // Container(
              //   child: Text('ABC'),
              // ),
              PostPage(),
              BlocProvider(
                create: (context) => PostDetailBloc(
                    postDetailRepository: PostDetailRepository()),
                child: PostDetailPage(id: '1'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          if (index == 0) _navBarBloc.add(NavBarItems.firstPage);
          if (index == 1) _navBarBloc.add(NavBarItems.secondPage);
          if (index == 2) _navBarBloc.add(NavBarItems.thirdPage);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one),
            label: "PageOne",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: "PageTwo",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3),
            label: "PageThree",
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
