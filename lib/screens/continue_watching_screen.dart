import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../constants.dart';
import '../../model/course.dart';

class ContinueWatchingScreen extends StatelessWidget {
  const ContinueWatchingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      backdropEnabled: true,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(34.0),
      ),
      color: kCardPopupBackgroundColor,
      boxShadow: [
        BoxShadow(color: kShadowColor, offset: Offset(0, -12), blurRadius: 32.0)
      ],
      minHeight: 85.0,
      maxHeight: MediaQuery.of(context).size.height * 0.75,
      panel: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 12.0, bottom: 16.0),
              child: Container(
                width: 42.0,
                height: 4.0,
                decoration: BoxDecoration(
                  color: Color(0xFFC5CBD6),
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              "Continue Watching",
              style: kTitle2Style,
            ),
          ),
          ContinueWatchingScreenCard(course: continueWatchingCourses[0]),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              "Certificates",
              style: kTitle2Style,
            ),
          ),
        ],
      ),
    );
  }
}

class ContinueWatchingScreenCard extends StatelessWidget {

  const ContinueWatchingScreenCard({required this.course, super.key});
  final Course course;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
      Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: Container(
          width: 240,
          height: 240,
          decoration: BoxDecoration(
              gradient: course.background,
              borderRadius: BorderRadius.circular(41.0),
              boxShadow: [
                BoxShadow(
                  color: course.background.colors[0].withOpacity(0.3), offset: Offset(0,20), blurRadius: 30.0
                ),
                BoxShadow(
                  color: course.background.colors[1].withOpacity(0.3), offset: Offset(0,20), blurRadius: 30.0
                )
              ]),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 32.0, left: 32.0, right: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      course.courseSubtitle,
                      style: kCardSubtitleStyle,
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      course.courseTitle,
                      style: kCardTitleStyle,
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Image.asset(
                'asset/illustrations/${course.illustration}',
                fit: BoxFit.cover,
              ))
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 42.0),
        child: Container(
          width: 60.0,
          height: 50.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: const [
                BoxShadow(
                  color: kShadowColor,
                  offset: Offset(0, 4),
                  blurRadius: 16.0,
                )
              ]),
               padding: EdgeInsets.all(12.0),
          child: Image.asset('asset/logos/${course.logo}'),
        ),
      )
    ]);
  }
}

