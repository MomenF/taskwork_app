

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/Data/Data.dart';

class WebOnlineCircleProfile extends StatelessWidget {
  late int index;


  WebOnlineCircleProfile(this.index);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: 22.0,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.network("${UserData.onLineUsers[index].imageUrl}",
                    height: double.infinity,
                    width: double.infinity,
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
