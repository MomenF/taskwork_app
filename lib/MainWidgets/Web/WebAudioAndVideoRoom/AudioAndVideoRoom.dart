import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/CommonWidgets/CircleProfile/Online.dart';
import 'package:taskwork_app/Data/Data.dart';

import '../../../../contants.dart';
import '../webOnlineCircleProfile.dart';

class WebAudioAndVideoRoom extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 70,
            child: ListView.separated(
              // physics: NeverScrollableScrollPhysics(),
              // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount:  UserData.onLineUsers.length,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return InkWell(
                    onTap: (){},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child:  Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: PlatColors.webBorder
                          )
                        ),
                        child: Chip(
                          backgroundColor: Colors.white,
                          label: Row(
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
                        ),
                      ),
                    ),
                  );
                }
                return WebOnlineCircleProfile(index);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 10.0,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
