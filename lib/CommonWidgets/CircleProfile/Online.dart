import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/Data/Data.dart';

import '../../../contants.dart';


class OnlineCircleProfile extends StatelessWidget {
 late int index;


 OnlineCircleProfile(this.index);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: 20.0,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.network("${UserData.onLineUsers[index].imageUrl}",
                    height: SizeConfig.screenHeight! * 0.07,
                    fit: BoxFit.fill,  ),    ],   )),   ),
        Container(decoration: BoxDecoration(
            shape: BoxShape.circle,
            border:
            Border.all(color: Colors.white, width: 1.5)),
          child: CircleAvatar(
            radius: 8,
            backgroundColor: Color(0xff33A14B),
          ),
        )
      ],
    );
  }
}
