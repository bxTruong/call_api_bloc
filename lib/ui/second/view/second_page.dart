import 'package:call_api_bloc/commons/utils/routes.dart';
import 'package:call_api_bloc/ui/second/bloc/second_bloc.dart';
import 'package:call_api_bloc/ui/second/bloc/second_event.dart';
import 'package:call_api_bloc/ui/second/bloc/second_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late SecondBloc _secondBloc;

  @override
  void initState() {
    _secondBloc = context.read<SecondBloc>();
    _secondBloc.add(SecondEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SecondBloc, SecondState>(
      builder: (context, state) {
        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Routes.POST_DETAIL_PAGE,
                  arguments: state.listSecond![index].id,
                );
              },
              child: ListTile(
                leading: Text(
                  '${state.listSecond![index].id}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                title: Text('${state.listSecond![index].title}'),
                isThreeLine: true,
                subtitle: Text('${state.listSecond![index].body}'),
                dense: true,
              ),
            );
          },
          itemCount: state.listSecond!.length,
        );
      },
    );
  }
}
