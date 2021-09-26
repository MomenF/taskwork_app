import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/CommonWidgets/CircleProfile/Online.dart';
import 'package:taskwork_app/Data/Data.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/CommonWeb/webOnlineCircleProfile.dart';
import '../../../../contants.dart';

class WebAudioAndVideoRoom extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,),
      child: Container(
        padding:  const EdgeInsets.symmetric( vertical:  10.0),
        height: 70,
        child: ScrollConfiguration(
            behavior: MyCustomScroll(),
          child: ListView.separated(
            // physics: NeverScrollableScrollPhysics(),
            // shrinkWrap: true,
            controller: MyCustomScroll.controller,
            scrollDirection: Axis.horizontal,
            itemCount: 1+  UserData.onLineUsers.length,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: PlatColors.webBorder
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: MaterialButton(
                    onPressed: (){},
                    child: Row(
                      children: [
                        Image.asset("assets/icons/room.png"),
                        Text(
                          "Create Room",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2164AE),
                          ),
                        ),
                      ],
                    ),
                  )
                );
              }
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  WebOnlineCircleProfile(index - 1),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 3.0,
              );
            },
          ),
        ),
      ),
    );
  }
}
