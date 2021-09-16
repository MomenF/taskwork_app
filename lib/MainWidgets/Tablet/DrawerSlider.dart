import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/CommonWidgets/CircleProfile/Current.dart';
import 'package:taskwork_app/Data/Data.dart';
import 'package:taskwork_app/MainWidgets/Web/webOnlineCircleProfile.dart';
import 'package:taskwork_app/contants.dart';
import 'package:get/get.dart';

class TabletDrawerToolsScreen extends StatelessWidget {

  static String id  = "MobileSliderToolsScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF0F2F5),
        child: ListView(
          children: [
            ListTile(
              leading: CurrentCircleProfile(),
              title: Text("${UserData.currentUser.user}"),
            ),
            ListTile(
              leading: Image.asset("assets/icons/tabs/friends.png"),
              title: Text("Friends"),
            ),
            ListTile(
              leading: Image.asset("assets/icons/tabs/groups.png"),
              title: Text("Groups"),
            ),
            ListTile(
              leading: Image.asset("assets/icons/tabs/pages.png"),
              title: Text("Pages"),
            ),
            ListTile(
              leading: Image.asset("assets/icons/tabs/memory.png"),
              title: Text("Memories"),
            ),
            ListTile(
              leading: Image.asset("assets/icons/tabs/jops.png"),
              title: Text("Jops"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xffE4E6EB),
                child: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Colors.black,
                ),
              ),
              title: Text("Other"),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundColor: Color(0xffE4E6EB),
                  child: IconButton(onPressed: (){
                    Navigator.pop ;
                  },
                      icon: Icon(Icons.arrow_back_outlined,
                        color: Colors.black,))),
              title: Text("Back"),
            ),
          ],
        ),
      ),
    );


  }
}
