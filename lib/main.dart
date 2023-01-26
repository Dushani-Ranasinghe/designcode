// ignore_for_file: prefer_const_constructors
import 'package:designcode/components/sidebar_row.dart';
import 'package:designcode/model/sidebar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
        child: SidebarRow(item: sidebarItem[1],),
      )),
    );
  }
}

