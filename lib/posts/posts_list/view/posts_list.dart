import 'package:call_api_bloc/commons/utils/routes.dart';
import 'package:call_api_bloc/posts/posts_list/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsList extends StatefulWidget {
  @override
  _PostsList createState() => _PostsList();
}

class _PostsList extends State<PostsList> {
  late PostBloc _postBloc;

  @override
  void initState() {
    _postBloc = context.read<PostBloc>();
    _postBloc.add(GetPostsListEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
      builder: (context, state) {
        switch (state.status) {
          case PostStatus.loading:
            return Center(
              child: CircularProgressIndicator(),
            );
          case PostStatus.initial:
            return Center(
              child: Text('Danh sách trống'),
            );
          case PostStatus.success:
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Routes.POST_DETAIL_PAGE,
                      arguments: state.posts[index].id,
                    );
                  },
                  child: ListTile(
                    leading: Text(
                      '${state.posts[index].id}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    title: Text('${state.posts[index].title}'),
                    isThreeLine: true,
                    subtitle: Text('${state.posts[index].body}'),
                    dense: true,
                  ),
                );
              },
              itemCount: state.posts.length,
            );
          case PostStatus.failure:
            return Center(
              child: Text('Lỗi tải dữ liệu'),
            );
        }
      },
    );
  }
}
