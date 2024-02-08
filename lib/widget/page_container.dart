
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/stack.dart';
import 'package:flutter_application_1/widget/table.dart';

class PageContainer extends StatelessWidget {
  const PageContainer({super.key});

  void drawerChanged(context) {
    debugPrint("drawer changed");
    var width = MediaQuery.of(context).size.width;
    debugPrint(width.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hello app"),
        automaticallyImplyLeading: false,
        leading: Icon(Icons.confirmation_num_rounded),
        //backgroundColor: Theme.of(context).colorScheme.inverseSurface,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueAccent,
        child: Container(
          child: const Column(children: [Text("hello")]),
        ),
      ),
      endDrawer: const Drawer(
        backgroundColor: Colors.amber,
      ),
      onDrawerChanged: (isOpened) {
        drawerChanged(context);
      },
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.access_alarm),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: const Center(
        //child: StackWidget(),
        child:TableWidget()
      ),
      persistentFooterButtons: [
        Icon(Icons.ac_unit_outlined),
        Icon(Icons.abc_rounded),
      ],
      persistentFooterAlignment: AlignmentDirectional.topStart,
    );
  }
}
