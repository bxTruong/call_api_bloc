import 'package:call_api_bloc/models/third_obj.dart';

class ThirdRepository {
  addList() async {
    List<ThirdObj> listThird = [];
    for (int i = 1; i <= 180; i++) {
      listThird.add(
        ThirdObj(
          id: i,
          title: "phan tu thu " + i.toString(),
          body: "body phan tu thu" + i.toString(),
        ),
      );
    }
    print("bbbbb ${listThird.length}");
    return listThird;
  }
}
