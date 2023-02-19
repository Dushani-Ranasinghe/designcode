
import 'package:flutter/material.dart';

import '../../model/course.dart';
import '../cards/continue_watching_card.dart';

class CompletedCourseList extends StatefulWidget {
  const CompletedCourseList({super.key});

  @override
  State<CompletedCourseList> createState() => _CompletedCourseListState();
}

class _CompletedCourseListState extends State<CompletedCourseList> {
  List<Container> indicators = [];
  int currentPage = 0;

//indicators
  Widget updateIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: completedCourses.map((course) {
        var index = completedCourses.indexOf(course);
        return Container(
          width: 7.0,
          height: 7.0,
          margin: EdgeInsets.symmetric(horizontal: 6.0),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  currentPage == index ? Color(0xFF0971FE) : Color(0xFFA6AEBD)),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200.0,
          width: double.infinity,
          child: PageView.builder(
            itemCount: completedCourses.length,
            itemBuilder: ((context, index) {
              return Opacity(
                opacity: currentPage == index ? 1.0:0.5,
                child: ContinueWatchingScreenCard(
                  course: completedCourses[index],
                ),
              );
            }),
            controller: PageController(initialPage: 0, viewportFraction: 0.75),
            onPageChanged: ((index) {
              setState(() {
                currentPage = index;
              });
            }),
          ),
        ),
        updateIndicators(),
      ],
    );
  }
}
