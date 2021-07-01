class Post {
  int? userId;
  int? id;
  String? title;
  String? body;

  Post({this.userId, this.id, this.title, this.body});

  Post.fromJson(dynamic json) {
    userId = json["userId"] ?? -1;
    id = json["id"] ?? -1;
    title = json["title"] ?? '';
    body = json["body"] ?? '';
  }
}
