import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/MainWidgets/Mobile/MobileHome.dart';
import 'package:taskwork_app/MainWidgets/Tablet/Tablet.dart';
import 'package:taskwork_app/MainWidgets/Web/Web.dart';
import 'package:taskwork_app/SplashScreens/TableSplashScreen.dart';
import 'package:taskwork_app/SplashScreens/WebSplashScreen.dart';
import 'package:taskwork_app/Util/Responsive.dart';

import '../SplashScreens/MobileSplashScreen.dart';

class MainSplashScreen extends StatelessWidget {
  static String id = "/MainSplashScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //     preferredSize: Size.fromWidth(double.infinity),
      //     child: ResponsiveLayout(
      //       mobileScreenSize: MobileHomeScreen(),
      //       tabletScreenSize: TabletScreen(),
      //       webScreenSize: WebScreen(),
      //     )
      //
      // ),
      body:ResponsiveLayout(
        mobileScreenSize: MobileSplashScreen(),
        tabletScreenSize: TabletSplashScreen(),
        webScreenSize: WebSplashScreen(),
      ) ,
    );  }
}
