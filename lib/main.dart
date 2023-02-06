// ignore_for_file: prefer_const_constructors
// import 'package:designcode/screens/sidebar_screen.dart';

import 'package:designcode/constants.dart';
import 'package:designcode/model/course.dart';
import 'package:flutter/material.dart';

import 'components/cards/recent_course_card.dart';
import 'components/home_screen.dart';
import 'components/lists/recent_course_list.dart';
import 'components/searchfield_widget.dart';
import 'components/sidebar_button.dart';

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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Recents",
                      style: kLargeTitleStyle,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "23 courses, more coming",
                      style: kSubtitleStyle,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              RecentCourseList(),
            ],
          ),
        ),
      )),
    );
  }
}






