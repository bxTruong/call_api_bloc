import 'package:call_api_bloc/ui/homepage/bloc/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum NavBarItems {
  firstPage,
  secondPage,
  thirdPage,
}

class NavBarBloc extends Bloc<NavBarItems, NavBarState> {
  NavBarBloc() : super(ShowFirstPage());
  @override
  Stream<NavBarState> mapEventToState(NavBarItems event) async* {
    switch (event) {
      case NavBarItems.firstPage:
        yield ShowFirstPage();
        break;
      case NavBarItems.secondPage:
        yield ShowSecondPage();
        break;
      case NavBarItems.thirdPage:
        yield ShowThirdPage();
        break;
    }
  }
}
