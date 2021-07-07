import 'package:call_api_bloc/ui/homepage/bloc/bloc.dart';
import 'package:call_api_bloc/ui/homepage/bloc/state.dart';
import 'package:call_api_bloc/ui/posts/posts_list/view/post_list_view.dart';
import 'package:call_api_bloc/ui/second/view/second_list_view.dart';
import 'package:call_api_bloc/ui/third/view/third_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  late NavBarBloc _navBarBloc = NavBarBloc();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey ,
      body: BlocBuilder(
        bloc: _navBarBloc,
        builder: (context, NavBarState state) {
          if (state is ShowFirstPage) {
            return buildHomepage(state.title, state.itemIndex);
          }
          if (state is ShowSecondPage) {
            return buildHomepage(state.title, state.itemIndex);
          }
          if (state is ShowThirdPage) {
            return buildHomepage(state.title, state.itemIndex);
          }
          return Container();
        },
      ),
    );
  }

  buildHomepage(String title, int currentIndex) {
    print('INDEXXXXX $currentIndex');
    return Scaffold(
      drawer: _drawer(),
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: Center(
          child: IndexedStack(
            index: currentIndex,
            children: [
              PostPage(),
              SecondListView(),
              ThirdListView(),
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
        // sao phải rắc rối thế này!!
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

  _drawer() {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            ListTile(
              onTap: () {
                _navBarBloc.add(NavBarItems.firstPage);
              },
              title: Text("PageOne"),
            ),
            ListTile(
              onTap: () {
                _navBarBloc.add(NavBarItems.secondPage);
              },
              title: Text("PageTwo"),
            ),
            ListTile(
              onTap: () {
                _navBarBloc.add(NavBarItems.thirdPage);
              },
              title: Text("PageThree"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
