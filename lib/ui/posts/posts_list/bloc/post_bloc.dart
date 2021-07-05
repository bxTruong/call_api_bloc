import 'package:call_api_bloc/ui/posts/posts_list/bloc/bloc.dart';
import 'package:call_api_bloc/ui/posts/posts_list/repository/post_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostRepository repository;

  PostBloc(PostState initialState, this.repository) : super(initialState);

  @override
  Stream<PostState> mapEventToState(PostEvent event) async* {
    if (event is GetPostsListEvent) {
      yield state.copyWith(status: PostStatus.loading);
      yield await _mapPostFetchedToState(state);
    }
  }

  Future<PostState> _mapPostFetchedToState(PostState state) async {
    if (state.hasReachedMax) return state;
    try {
      var posts = await PostRepository().fetchPosts();
      return state.copyWith(
        status: PostStatus.success,
        posts: posts,
        hasReachedMax: false,
      );
    } on Exception {
      return state.copyWith(status: PostStatus.failure);
    }
  }
}
