import 'package:call_api_bloc/ui/posts/detail/bloc/bloc.dart';
import 'package:call_api_bloc/ui/posts/detail/repository/post_detail_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostDetailBloc extends Bloc<PostDetailEvent, PostDetailState> {
  final PostDetailRepository postDetailRepository;

  PostDetailBloc({required this.postDetailRepository})
      : super(PostDetailState());

  @override
  Stream<PostDetailState> mapEventToState(PostDetailEvent event) async* {
    if (event is GetPostDetail) {
      yield state.copyWith(status: PostsDetailStatus.loading);
      var post = await PostDetailRepository().requestDetailPost(event.id);
      yield state.copyWith(
        status: PostsDetailStatus.success,
        post: post,
      );
    }
  }
}
