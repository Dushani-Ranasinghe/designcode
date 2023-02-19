import 'package:designcode/constants.dart';
import 'package:designcode/model/course.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class CourseScreen extends StatefulWidget {
  CourseScreen({required this.course});
  final Course course;

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        //dismiss widget
         onTap: () {
      Navigator.pop(context);
    },
        child: Container(
          color: kBackgroundColor,
          child: Center(
            child: Text(widget.course.courseTitle),
          ),
        ),
      ),
    );
  }
}
