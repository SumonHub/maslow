import 'package:flutter/material.dart';
import 'package:maslow/view/screens/LoginPage.dart';
import 'package:maslow/view/utils/Constant.dart';
import 'package:maslow/view/utils/Routes.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Constants.colorPrimary,
        accentColor: Constants.colorAccent,
        scaffoldBackgroundColor: Constants.colorPrimary,
      ),
      //initialRoute: Routes.ROUTE_ROOT,
      routes: Routes.getRoutes(context),
      home: SplashScreen(
          seconds: 3,
          navigateAfterSeconds: LoginPage(),
          image: new Image.asset('assets/images/maslow_logo.png'),
          photoSize: 150.0,
          loaderColor: Colors.red),
    );
  }
}
