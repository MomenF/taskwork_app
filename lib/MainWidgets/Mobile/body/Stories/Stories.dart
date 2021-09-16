import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/Data/Data.dart';

import '../../../../contants.dart';
import '../CurrentStory.dart';
import '../OnlineStory.dart';

class Stories extends StatelessWidget {
  const Stories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding( padding: const EdgeInsets.all(15.0),
      child: Container(
          height: SizeConfig.screenHeight!*.2,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context,index)=>SizedBox(
              width: 3.0,
            ),
            itemCount:  UserData.onLineUsers.length,
            itemBuilder: (context,index ){
              if (index == 0){
                return CurrentStory();
              }
              else{
                return OnlineStory(index);
              }
            },
          )
      ),
    );
  }
}
