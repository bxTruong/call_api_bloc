import 'package:call_api_bloc/ui/second/bloc/second_event.dart';
import 'package:call_api_bloc/ui/second/bloc/second_state.dart';
import 'package:call_api_bloc/ui/second/second_repository/second_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondBloc extends Bloc<SecondEvent, SecondState> {
  SecondRepository secondRepository;

  SecondBloc(SecondState initialState, this.secondRepository)
      : super(initialState);

  @override
  Stream<SecondState> mapEventToState(SecondEvent event) async* {
    if (event is SecondEvent) {
      yield await mapSecondFetchedToState(state);
    }
  }

  Future<SecondState> mapSecondFetchedToState(SecondState state) async {
    var listSecond = await secondRepository.addList();
    print("aaaaa ${listSecond.length}");
    return state.copyWith(
      listSecond: listSecond,
    );

  }
}
