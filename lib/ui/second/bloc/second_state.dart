import 'package:call_api_bloc/models/second_obj.dart';

enum SecondStatus {
  initial,
  success,
  failure,
  loading,
}

class SecondState {
  SecondState({
    this.status = SecondStatus.initial,
    this.listSecond = const <SecondObj>[],
  });

  late SecondStatus? status;
  late List<SecondObj>? listSecond;

  SecondState copyWith({
    SecondStatus? status,
    List<SecondObj>? listSecond,
  }) {
    return SecondState(
      status: status ?? this.status,
      listSecond: listSecond ?? this.listSecond,
    );
  }
}
