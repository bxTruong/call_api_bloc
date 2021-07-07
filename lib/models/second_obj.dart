class SecondObj {
  late int? id;
  late String? title;
  late String? body;

  SecondObj({
    int? id,
    String? title,
    String? body,
  }) {
    this.id = id ?? -1;
    this.title = title ?? '';
    this.body = body ?? '';
  }
}
