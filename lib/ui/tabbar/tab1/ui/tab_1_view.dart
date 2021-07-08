import 'package:call_api_bloc/ui/tabbar/tab1/bloc/tab_1_bloc.dart';
import 'package:call_api_bloc/ui/tabbar/tab1/bloc/tab_1_event.dart';
import 'package:call_api_bloc/ui/tabbar/tab1/bloc/tab_1_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Tab1View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Tab1Bloc(Tab1State()),
      child: BodyTab1(),
    );
  }
}

class BodyTab1 extends StatefulWidget {
  @override
  _BodyTab1 createState() => _BodyTab1();
}

class _BodyTab1 extends State<BodyTab1> {
  late Tab1Bloc tab1bloc;

  @override
  void initState() {
    print('abacac');
    tab1bloc = context.read<Tab1Bloc>();
    tab1bloc.state.dropdownValue = 'Bánh mì - Kem';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<Tab1Bloc, Tab1State>(builder: (context, state) {
          return Column(
            children: [
              CheckboxListTile(
                value: state.checkBoxValue,
                onChanged: (value) {
                  context
                      .read<Tab1Bloc>()
                      .add(UpdateCheckBoxEvent(checkBoxValue: value));
                },
                title: Text('Hello các bạn lại là Chao đây'),
              ),
              SizedBox(
                height: 10,
                width: 0,
              ),
              DropdownButton<String>(
                onChanged: (value) => context
                    .read<Tab1Bloc>()
                    .add(UpdateDropDownEvent(dropdownValue: value)),
                value: state.dropdownValue,
                icon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Colors.white,
                  ),
                ),
                iconSize: 24,
                elevation: 16,
                items: <String>[
                  'Bánh mì - Kem',
                  'Bánh mì - Sữa ông thọ',
                  'Bánh mì - Pate'
                ].map<DropdownMenuItem<String>>((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
              ),
            ],
          );
        }),
      ),
    );
  }
}
