class Post {
  int? userId;
  int? id;
  String? title;
  String? body;

  Post({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    this.userId = userId ?? -1;
    this.id = id ?? -1;
    this.title = title ?? '';
    this.body = body ?? '';
  }

  Post.fromJson(dynamic json) {
    userId = json["userId"] ?? -1;
    id = json["id"] ?? -1;
    title = json["title"] ?? '';
    body = json["body"] ?? '';
  }
}
