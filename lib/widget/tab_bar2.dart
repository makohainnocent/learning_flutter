import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/stack.dart';
import 'package:flutter_application_1/widget/table.dart';

class TabBarSample2 extends StatefulWidget {
  const TabBarSample2({super.key});

  @override
  State<TabBarSample2> createState() => _TabBarSample2State();
}

class _TabBarSample2State extends State<TabBarSample2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              const SliverAppBar(
                title: const Text("tab bar demo"),
                pinned: true,
                floating:true,
                bottom: TabBar(
                  //isScrollable: true,
                  indicatorColor: Colors.amber,
                  //indicatorSize: TabBarIndicatorSize.label,
                  //indicatorWeight: 10,
                  /*indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), // Creates border
                  color: Colors.greenAccent),*/
                  tabs: [
                    Tab(icon: Icon(Icons.flight)),
                    Tab(icon: Icon(Icons.directions_transit)),
                    Tab(icon: Icon(Icons.directions_car)),
                  ],
                ),
              ),
            ];
          },
          body: const Center(
              child: TabBarView(
            children: [
              Icon(Icons.flight, size: 350),
              Icon(Icons.directions_transit, size: 350),
              Icon(Icons.directions_car, size: 350),
            ],
          )),
        )));
  }
}
