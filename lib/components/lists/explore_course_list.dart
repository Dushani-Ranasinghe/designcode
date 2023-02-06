import 'package:flutter/material.dart';
import '../../model/course.dart';
import '../cards/explore_course_card.dart';

class ExploreCourseList extends StatelessWidget {
  const ExploreCourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 5.0, bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 120.0,
            width: 280.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: exploreCourses.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: index == 0 ? 20.0 : 0.0),
                  child: ExploreCourseCard(course: exploreCourses[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


