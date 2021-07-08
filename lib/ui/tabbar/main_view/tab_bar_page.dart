import 'package:call_api_bloc/ui/tabbar/tab1/ui/tab_1_view.dart';
import 'package:call_api_bloc/ui/tabbar/tab2/ui/tab_2_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/tab_bar_bloc.dart';

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPage createState() => _TabBarPage();
}

class _TabBarPage extends State<TabBarPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tab Bar'),
        ),
        body: BlocProvider(
          create: (context) => TabBarBloc(),
          child: BlocBuilder<TabBarBloc, int>(
            builder: (context, state) {
              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            context.read<TabBarBloc>().updateTab(0);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: state == 0 ? Colors.red : Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text('Tab1'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            context.read<TabBarBloc>().updateTab(1);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: state == 1 ? Colors.red : Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text('Tab2'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: PageView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: context.read<TabBarBloc>().pagerController,
                      children: [
                        Tab1View(),
                        Tab2View(),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ));
  }
}
