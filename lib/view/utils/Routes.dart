
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maslow/view/screens/AllCoursePage.dart';
import 'package:maslow/view/screens/CourseDetails.dart';
import 'package:maslow/view/screens/HomeScreen.dart';
import 'package:maslow/view/screens/LoginPage.dart';


class Routes {

  static const ROUTE_ROOT = "/";
  static const ROUTE_HOME_PAGE = "/ROUTE_HOME_PAGE";
  static const ROUTE_LOGIN_PAGE = "/ROUTE_LOGIN_PAGE";
  static const ROUTE_PROFILE_PAGE = "/ROUTE_PROFILE_PAGE";

  //
  static const ROUTE_ALL_COURSE_PAGE = "/ROUTE_ALL_COURSE_PAGE";
  static const ROUTE_COURSE_DETAILS_PAGE = "/ROUTE_COURSE_DETAILS_PAGE";

  static getRoutes(BuildContext context) {
    return {
      ROUTE_LOGIN_PAGE: (context) => LoginPage(),
      ROUTE_HOME_PAGE: (context) => HomeScreen(),
      ROUTE_PROFILE_PAGE: (context) => HomeScreen(),
      ROUTE_ALL_COURSE_PAGE: (context) => AllCoursePage(),
      ROUTE_COURSE_DETAILS_PAGE: (context) => CourseDetails(),
    };
  }
}