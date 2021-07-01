import 'package:call_api_bloc/posts/bloc/bloc.dart';
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
      builder: (context, state) {
        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
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
            );
          },
          itemCount: state.posts.length,
        );
      },
    );
  }
}
