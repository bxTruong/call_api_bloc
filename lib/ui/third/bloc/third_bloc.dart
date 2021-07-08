import 'package:call_api_bloc/ui/third/bloc/third_event.dart';
import 'package:call_api_bloc/ui/third/bloc/third_state.dart';
import 'package:call_api_bloc/ui/third/third_repository/third_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThirdBloc extends Bloc<ThirdEvent, ThirdState> {
  ThirdRepository thirdRepository;

  ThirdBloc(ThirdState initialState, this.thirdRepository)
      : super(initialState);

  @override
  Stream<ThirdState> mapEventToState(ThirdEvent event) async* {
    if (event is ThirdEvent) {
      yield await mapSecondFetchedToState(state);
    }
  }

  Future<ThirdState> mapSecondFetchedToState(ThirdState state) async {
    var listThird = await thirdRepository.checkValue();
    print("aaaaa ${listThird.length}");
    return state.copyWith(
      listThird: listThird,
    );
  }
}
