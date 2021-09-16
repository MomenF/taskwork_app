import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/Data/Data.dart';

import '../../../contants.dart';


class OnlineStory extends StatelessWidget {
late int index ;
double edgeSize = 15.0 ;

OnlineStory(this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(edgeSize),
        child: Container(
          height: SizeConfig.screenHeight!*.2,
          width: SizeConfig.screenWidth!*.22,
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
            Image.network("${UserData.onLineUsers[index].imageUrl}",fit: BoxFit.fitHeight,height: SizeConfig.screenHeight!*.3,
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
