import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/Data/Data.dart';

class WebOnlineCircleProfile extends StatelessWidget {
late int index  ;


WebOnlineCircleProfile({required this.index});

@override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: ClipRRect(
          borderRadius: BorderRadius.circular(40.0),
          child: Image.network(
            "${UserData.onLineUsers[index].imageUrl}",
            height: double.infinity,
            fit: BoxFit.cover,
          )),
    );
  }
}
