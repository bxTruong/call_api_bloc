import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabBarBloc extends Cubit<int> {
  TabBarBloc() : super(0);
  PageController pagerController = PageController(initialPage: 1);

  void updateTab(int tabIndex) {
    pagerController.animateToPage(
      tabIndex,
      duration: Duration(milliseconds: 500),
      curve: Curves.ease,
    );
    emit(tabIndex);
  }
}
