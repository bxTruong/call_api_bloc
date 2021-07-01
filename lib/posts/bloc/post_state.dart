import 'package:call_api_bloc/posts/models/models.dart';
import 'package:equatable/equatable.dart';

enum PostStatus {
  // khởi tạo
  initial,
  // thành công
  success,
  // thất bại
  failure,
}

//mỗi khi hành động dẫn tới sự kiện xảy ra, sẽ phải nhận về một phản hồi nào đó, phải đưa nó vào trạng thái. Vd: trạng thái đang tải (loading), đãi tải, lỗi
class PostState extends Equatable {
  const PostState({
    this.status = PostStatus.initial,
    this.posts = const <Post>[],
    this.hasReachedMax = false,
  });

  final PostStatus status;

  // list giá trị
  final List<Post> posts;

  // dịch giá trị: đạt đến mức tối đa
  final bool hasReachedMax;

  PostState copyWith({
    PostStatus? status,
    List<Post>? posts,
    bool? hasReachedMax,
  }) {
    return PostState(
      status: status ?? this.status,
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  String toString() {
    return '''PostState { status: $status, hasReachedMax: $hasReachedMax, posts: ${posts.length} }''';
  }

  @override
  List<Object> get props => [status, posts, hasReachedMax];
}
