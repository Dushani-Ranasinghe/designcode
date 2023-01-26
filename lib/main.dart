// ignore_for_file: prefer_const_constructors
// import 'package:designcode/screens/sidebar_screen.dart';

import 'package:designcode/constants.dart';
import 'package:designcode/model/course.dart';
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
      home: Scaffold(body: SafeArea(child: RecentCourceCard(course: recentCourses[0],))),
    );
  }
}

class RecentCourceCard extends StatelessWidget {
  // const RecentCourceCard({super.key});

  const RecentCourceCard({required this.course, super.key});
  final Course course;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 240,
      decoration: BoxDecoration(
        gradient: course.background,
        borderRadius: BorderRadius.circular(41.0)
      ),
      child: Padding(
        padding: EdgeInsets.only( top: 32.0, left: 32.0, right: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(course.courseSubtitle, style: kCardSubtitleStyle,),
            SizedBox(height: 6.0,),
            Text(course.courseTitle, style: kCardTitleStyle,)
          ],
        ),
      ),
    );
  }
}
