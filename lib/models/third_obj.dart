class ThirdObj {
  late int? id;
  late String? title;
  late String? body;

  ThirdObj({
    int? id,
    String? title,
    String? body,
  }) {
    this.id = id ?? -1;
    this.title = title ?? '';
    this.body = body ?? '';
  }
}
