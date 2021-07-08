import 'package:call_api_bloc/ui/tabbar/tab1/bloc/export_tab_1_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Tab1Bloc extends Bloc<Tab1Event, Tab1State> {
  Tab1Bloc(Tab1State initialState) : super(initialState);

  @override
  Stream<Tab1State> mapEventToState(Tab1Event event) async* {
    if (event is UpdateCheckBoxEvent) {
      yield state.copyWith(checkBoxValue: event.checkBoxValue);
    } else if (event is UpdateDropDownEvent) {
      print('aaaaaaaab');
      yield state.copyWith(dropdownValue: event.dropdownValue);
      print('aaaaaaa3 ${state.dropdownValue}');

    }
  }
}
