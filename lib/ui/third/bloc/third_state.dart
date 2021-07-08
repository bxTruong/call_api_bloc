import 'package:call_api_bloc/models/third_obj.dart';

class ThirdState {
  ThirdState({
    this.listThird = const <ThirdObj>[],
  });

  late List<ThirdObj>? listThird;

  ThirdState copyWith({
    List<ThirdObj>? listThird,
  }) {
    return ThirdState(
      listThird: listThird ?? this.listThird,
    );
  }
}
