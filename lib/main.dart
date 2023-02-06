import 'package:designcode/constants.dart';
import 'package:flutter/material.dart';

import 'components/home_screen.dart';
import 'components/lists/recent_course_list.dart';

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
              Padding(padding:EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 25.0,
                bottom: 16.0
              ), child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Explore", style: kTitle1Style,)
                ],
              ),)
            ],
          ),
        ),
      )),
    );
  }
}






