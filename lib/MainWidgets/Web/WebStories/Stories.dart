import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/Data/Data.dart';

import '../../../../contants.dart';
import '../WebCurrentStory.dart';
import '../WebOnlineStory.dart';

class WebStories extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding( padding: const EdgeInsets.all(15.0),
      child: Container(
          height: 200,
          color: Color(0xffF0F2F5),
          width: double.infinity,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context,index)=>SizedBox(
              width: 3.0,
            ),
            itemCount:  UserData.onLineUsers.length,
            itemBuilder: (context,index ){
              if (index == 0){
              UserData.onLineUsers.length +1;
                return WebCurrentStory();
              }
              else{
                return WebOnlineStory(index);
              }
            },
          )
      ),
    );
  }
}
