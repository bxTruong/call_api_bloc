import 'package:call_api_bloc/models/second_obj.dart';

class SecondRepository {
  addList() async {
    List<SecondObj> listSecond = [];
    for (int i = 1; i <= 90; i++) {
      listSecond.add(
        SecondObj(
          id: i,
          title: "phan tu thu " + i.toString(),
          body: "body phan tu thu" + i.toString(),
        ),
      );
    }
    print("aaaaa ${listSecond.length}");
    return listSecond;
  }
}
