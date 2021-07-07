import 'package:call_api_bloc/commons/utils/routes.dart';
import 'package:call_api_bloc/ui/third/bloc/third_bloc.dart';
import 'package:call_api_bloc/ui/third/bloc/third_event.dart';
import 'package:call_api_bloc/ui/third/bloc/third_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  late ThirdBloc _thirdBloc;

  @override
  void initState() {
    _thirdBloc = context.read<ThirdBloc>();
    _thirdBloc.add(ThirdEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThirdBloc, ThirdState>(
      builder: (context, state) {
        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Routes.POST_DETAIL_PAGE,
                  arguments: state.listThird![index].id,
                );
              },
              child: ListTile(
                leading: Text(
                  '${state.listThird![index].id}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                title: Text('${state.listThird![index].title}'),
                isThreeLine: true,
                subtitle: Text('${state.listThird![index].body}'),
                dense: true,
              ),
            );
          },
          itemCount: state.listThird!.length,
        );
      },
    );
  }
}
