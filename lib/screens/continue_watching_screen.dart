import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../components/cards/continue_watching_card.dart';
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
          ContinueWatchingList(),
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

class ContinueWatchingList extends StatefulWidget {
  const ContinueWatchingList({super.key});

  @override
  State<ContinueWatchingList> createState() => _ContinueWatchingListState();
}

class _ContinueWatchingListState extends State<ContinueWatchingList> {
  List<Container> indicators = [];
  int currentPage = 0;

//indicators 
  Widget updateIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: continueWatchingCourses.map((course) {
        var index = continueWatchingCourses.indexOf(course);
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
            itemCount: continueWatchingCourses.length,
            itemBuilder: ((context, index) {
              return ContinueWatchingScreenCard(
                course: continueWatchingCourses[index],
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
