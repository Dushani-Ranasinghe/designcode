// ignore_for_file: prefer_const_constructors
// import 'package:designcode/screens/sidebar_screen.dart';

import 'package:designcode/constants.dart';
import 'package:designcode/model/course.dart';
import 'package:flutter/material.dart';

import 'components/cards/recent_course_card.dart';
import 'components/lists/recent_course_list.dart';
import 'components/searchfield_widget.dart';

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


class HomeScreenNavBar extends StatelessWidget {
  const HomeScreenNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SideBarButton(),
          SearchFieldWidget(),
          Icon(
            Icons.notifications,
            color: kPrimaryLabelColor,
          ),
          SizedBox(
            width: 16.0,
          ),
          CircleAvatar(
            radius: 18.0,
            backgroundImage: AssetImage('asset/images/profile.jpg'),
          )
        ],
      ),
    );
  }
}



class SideBarButton extends StatelessWidget {
  const SideBarButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => {print('sidebar button')},
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
                  color: kShadowColor, offset: Offset(0, 12), blurRadius: 16.0)
            ]),
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
        child: Image.asset(
          'asset/icons/icon-sidebar.png',
          color: kPrimaryLabelColor,
        ),
      ),
    );
  }
}
