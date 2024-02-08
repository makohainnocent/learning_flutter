import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/stack.dart';
import 'package:flutter_application_1/widget/table.dart';

class TabBarSample5 extends StatefulWidget {
  const TabBarSample5({super.key});

  @override
  State<TabBarSample5> createState() => _TabBarSample5State();
}

class _TabBarSample5State extends State<TabBarSample5> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TabBar(
              isScrollable: true,
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
              ],
            ),
            
          ),
          body: const Center(
              child: TabBarView(
            children: [
              Icon(Icons.flight, size: 350),
              Icon(Icons.directions_transit, size: 350),
              Icon(Icons.directions_car, size: 350),
            ],
          )),
        ));
  }
}
