import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:flutter/material.dart';


class PlatColors{
  String iconPath = "assets/icons/tabs/";


  static const Color spaces = Color(0xffCDCDCD);
  static const Color mainColor = Color(0xFFE4E6EB);
  static const Color facebookBlue = Color(0xFF1777F2);
  static const LinearGradient createRoomColor = LinearGradient(colors: [
    Color(0xFF496ae1),Color(0xFF46538C)
  ]);
  static const onlineColor = Color(0xff57C71D);
  static const webBorder = Color(0xffCFD0D3);
  static const webColor =  Color(0xffF0F2F5);
}


class SizeConfig{
  String iconPath = "assets/icons/tabs/";

  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context){
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;
    defaultSize = orientation == Orientation.landscape?
    screenHeight! * .024
        : screenWidth! * .024;
  }
}

class ConstantValues {
  String iconPath = "assets/icons/tabs/";


  static const  kTabletWidth = 800;
  static const kDesktopWidth = 1200;
}

class MyCustomScroll extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices =>
      {PointerDeviceKind.touch, PointerDeviceKind.mouse};
  static final ScrollController controller = ScrollController();
}