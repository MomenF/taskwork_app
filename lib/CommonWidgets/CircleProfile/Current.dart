import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/Data/Data.dart';

class CurrentCircleProfile extends StatelessWidget {
  const CurrentCircleProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: ClipRRect(
          borderRadius: BorderRadius.circular(40.0),
          child: Image.network(
            "${UserData.currentUser.imageUrl}",
            height: double.infinity,
            fit: BoxFit.cover,
          )),
    );
  }
}
