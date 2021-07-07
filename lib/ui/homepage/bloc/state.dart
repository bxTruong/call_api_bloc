abstract class NavBarState {
  NavBarState();
}

class ShowFirstPage extends NavBarState {
  final String title = "FirstPage";
  final int itemIndex = 0;
}

class ShowSecondPage extends NavBarState {
  final String title = "SecondPage";
  final int itemIndex = 1;
}

class ShowThirdPage extends NavBarState {
  final String title = "ThirdPage";
  final int itemIndex = 2;
}
