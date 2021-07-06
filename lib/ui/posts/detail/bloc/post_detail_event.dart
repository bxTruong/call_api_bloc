abstract class PostDetailEvent {}

class GetPostDetail extends PostDetailEvent {
  final String id;
  GetPostDetail({required this.id});
}
