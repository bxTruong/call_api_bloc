import 'package:call_api_bloc/api/api.dart';
import 'package:call_api_bloc/posts/bloc/post_event.dart';
import 'package:call_api_bloc/posts/bloc/post_state.dart';
import 'package:call_api_bloc/posts/models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc(PostState initialState) : super(initialState);

  @override
  Stream<PostState> mapEventToState(PostEvent event) async* {
    if (event is GetPostsList) {
      yield await _mapPostFetchedToState(state);
    }
  }

  Future<PostState> _mapPostFetchedToState(PostState state) async {
    if (state.hasReachedMax) return state;
    try {
      final posts = await _fetchPosts();
      return state.copyWith(
        status: PostStatus.success,
        posts: posts,
        hasReachedMax: false,
      );
    } on Exception {
      return state.copyWith(status: PostStatus.failure);
    }
  }

  Future<List<Post>> _fetchPosts() async {
    final client = RestClient(NetworkUtils.getDioClient());
    String err = '';
    client.getPosts().then((value) {
      return value;
    }).catchError((onError) {
      err = onError;
    });
    throw Exception('$err');
  }


}
