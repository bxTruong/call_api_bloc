import 'package:call_api_bloc/posts/detail/bloc/bloc.dart';
import 'package:call_api_bloc/posts/detail/repository/post_detail_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostDetailPage extends StatefulWidget {
  late final String id;

  PostDetailPage({required this.id});

  @override
  _PostDetailPage createState() => _PostDetailPage(id: id);
}

class _PostDetailPage extends State<PostDetailPage> {
  late final String id;

  _PostDetailPage({required this.id});

  late PostDetailBloc _postDetailBloc;

  @override
  void initState() {
    _postDetailBloc = context.read<PostDetailBloc>();
    _postDetailBloc.add(GetPostDetail(id: id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return detailPostView();
  }

  detailPostView() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Post'),
      ),
      body: BlocBuilder<PostDetailBloc, PostDetailState>(
          builder: (context, state) {
        switch (state.status) {
          case PostsDetailStatus.loading:
            return Center(
              child: CircularProgressIndicator(),
            );
          case PostsDetailStatus.initial:
            return Center(
              child: Text('Danh sách trống'),
            );
          case PostsDetailStatus.success:
            return Container(
              color: Colors.red,
              child: ListTile(
                leading: Text(
                  '${state.post.id}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                title: Text('${state.post.title}'),
                isThreeLine: true,
                subtitle: Text('${state.post.body}'),
                dense: true,
              ),
            );
          case PostsDetailStatus.failure:
            return Center(
              child: Text('Lỗi tải dữ liệu'),
            );
        }
      }),
    );
  }
}
