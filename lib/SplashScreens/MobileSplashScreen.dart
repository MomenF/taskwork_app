
import 'dart:async';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/MainControl/MainScreen.dart';
import 'package:taskwork_app/MainWidgets/Mobile/MobileHome.dart';


class MobileSplashScreen extends StatefulWidget {
  static String id = "SplashScreen";

  @override
  _MobileSplashScreenState createState() => _MobileSplashScreenState();
}

class _MobileSplashScreenState extends State<MobileSplashScreen> {

  @override
  void initState() {
    Timer(Duration(
        seconds: 5
    ),()=> Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>MainScreen()), (route) => false));
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Shimmer.fromColors(
        period: Duration(
          seconds: 4
        ),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.image,size: 50.0,),
                title: SizedBox(
                  child: Container(
                    color: Colors.grey[100],
                    height: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[100],
                  ),

                ],
              )
            ],
          ),
          baseColor: Color(0xffCCCCCC),
          highlightColor: Colors.white)
    );
  }
}

