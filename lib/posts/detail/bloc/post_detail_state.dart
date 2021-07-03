import 'package:call_api_bloc/models/models.dart';

enum PostsDetailStatus {
  initial,
  success,
  failure,
  loading,
}

class PostDetailState {
  PostDetailState({
    PostsDetailStatus? status,
    Post? post,
  }) {
    this.status = status ?? PostsDetailStatus.initial;
    this.post = post ?? Post();
  }

  late PostsDetailStatus status;
  late Post post;

  PostDetailState copyWith({
    PostsDetailStatus? status,
    Post? post,
  }) {
    return PostDetailState(
      status: status ?? this.status,
      post: post ?? this.post,
    );
  }
}
