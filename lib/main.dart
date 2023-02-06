// ignore_for_file: prefer_const_constructors
// import 'package:designcode/screens/sidebar_screen.dart';

import 'package:designcode/constants.dart';
import 'package:designcode/model/course.dart';
import 'package:flutter/material.dart';

import 'components/cards/recent_course_card.dart';

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
          body: Container(
        color: kBackgroundColor,
        child: SafeArea(
          child: Column(
            children: [
              HomeScreenNavBar(),
              RecentCourceCard(
                course: recentCourses[0],
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class HomeScreenNavBar extends StatelessWidget {
  const HomeScreenNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RawMaterialButton(
          onPressed: () => {},
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          constraints: BoxConstraints(maxHeight: 40.0, maxWidth: 40.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.0),
              boxShadow: [
                BoxShadow(
                  color: kShadowColor,
                  offset: Offset(const 0,12),
                  blurRadius: 16.0
                )
              ]
            ),
          ),
        )
      ],
    );
  }
}
