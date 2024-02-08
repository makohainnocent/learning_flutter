import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/page_container.dart';
import 'package:flutter_application_1/widget/tab_bar.dart';
import 'package:flutter_application_1/widget/tab_bar2.dart';
import 'package:flutter_application_1/widget/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       theme: lightTheme,
       darkTheme: darkTheme,
       themeMode: ThemeMode.light,
      //home: const PageContainer()
      //home:TabBarSample()
      home:TabBarSample2()
    );
  }
}
