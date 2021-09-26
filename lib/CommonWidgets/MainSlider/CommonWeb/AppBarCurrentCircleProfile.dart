import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/Data/Data.dart';

class AppBarCurrentCircleProfile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: ClipRRect(
          borderRadius: BorderRadius.circular(360.0),
          child: Image.network(
            "${UserData.currentUser.imageUrl}",
            height: double.infinity,
            fit: BoxFit.cover,
          )),
    );
  }
}
