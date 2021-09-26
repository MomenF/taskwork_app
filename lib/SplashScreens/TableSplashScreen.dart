
import 'dart:async';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/MainControl/MainScreen.dart';
import 'package:taskwork_app/MainWidgets/Mobile/MobileHome.dart';


class TabletSplashScreen extends StatefulWidget {
  static String id = "SplashScreen";

  @override
  _TabletSplashScreenState createState() => _TabletSplashScreenState();
}

class _TabletSplashScreenState extends State<TabletSplashScreen> {

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
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context,index){
                        return ListTile(
                          leading: Icon(Icons.image,size: 50.0,),
                          title: SizedBox(
                            child: Container(
                              color: Colors.grey[100],
                              height: 20,
                            ),
                          ),
                        );
                      }),
                ),
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context,index){
                        return ListTile(
                          leading: Icon(Icons.image,size: 50.0,),
                          title: SizedBox(
                            child: Container(
                              color: Colors.grey[100],
                              height: 20,
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
            baseColor: Color(0xffCCCCCC),
            highlightColor: Colors.white)
    );
  }
}

