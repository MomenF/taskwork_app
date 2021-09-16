import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/Data/Data.dart';

import '../../../contants.dart';


class WebOnlineStory extends StatelessWidget {
late int index ;
double edgeSize = 10.0 ;

WebOnlineStory(this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(edgeSize),
        child: Container(
          height: double.infinity,
          width: 100.0,
          decoration: BoxDecoration(
              border: Border.all(
                  color: PlatColors.spaces,
                  width: 1.0
              ),
              borderRadius: BorderRadius.circular(edgeSize),
          ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.network("${UserData.onLineUsers[index].imageUrl}",fit: BoxFit.fitHeight,height: double.infinity,
            ),
            Expanded(
              child: Text("${UserData.onLineUsers[index].user}",
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                fontWeight: FontWeight.bold,
                  color: Colors.white
              ),),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
