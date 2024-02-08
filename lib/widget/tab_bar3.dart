import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/stack.dart';
import 'package:flutter_application_1/widget/table.dart';
import 'dart:async';

class TabBarSample3 extends StatefulWidget {
  const TabBarSample3({Key? key}) : super(key: key);

  @override
  State<TabBarSample3> createState() => _TabBarSample3State();
}

class _TabBarSample3State extends State<TabBarSample3>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: Text("tab bar demo"),
              pinned: true,
              floating: true,
              bottom: TabBar(
                indicatorColor: Colors.amber,
                tabs: [
                  Tab(icon: Icon(Icons.flight)),
                  Tab(icon: Icon(Icons.directions_transit)),
                  Tab(icon: Icon(Icons.directions_car)),
                ],
                controller: _controller, // Use the same controller here
              ),
            ),
          ];
        },
        body: Center(
          child: TabBarView(
            controller: _controller, // Use the same controller here
            children: [
              Icon(Icons.flight, size: 350),
              Icon(Icons.directions_transit, size: 350),
              Icon(Icons.directions_car, size: 350),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _selectedIndex = (_selectedIndex + 1) % _controller.length;
            _controller.animateTo(_selectedIndex);
          });
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
