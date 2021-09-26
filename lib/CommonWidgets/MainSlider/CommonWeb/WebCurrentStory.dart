import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/Data/Data.dart';
import 'package:taskwork_app/contants.dart';

class WebCurrentStory extends StatelessWidget {
double edgeSize = 10.0 ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(edgeSize),
        child:   Container(
          height: double.infinity,
          width: 100,
          // color: Colors.white,
          decoration: BoxDecoration(
              border: Border.all(
                  color: PlatColors.spaces,
                  width: 1.0
              ),
              borderRadius: BorderRadius.circular(edgeSize),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  flex: 3,
                  child:Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.network("${UserData.currentUser.imageUrl}",fit: BoxFit.fitHeight,height: double.infinity,
                      ),
                    ],
                  ) ),
              Transform.translate(
                offset: Offset(0,-20),
                child: CircleAvatar(
                  child: Icon(Icons.add),
                ),
              ),
              Container(
                // height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(edgeSize),
                  color: Colors.white,
                ),
                child: Text("Create story" , style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
*Stack(
        children: [
          Container(
            height: SizeConfig.screenHeight!*.2,
            width: SizeConfig.screenWidth!*.22,
            // color: Colors.white,
            decoration: BoxDecoration(
                border: Border.all(
                    color: PlatColors.spaces,
                    width: 1.0
                ),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                ]
            ),

          ),
          Transform.translate(
            offset: Offset(0,-20),
            child: CircleAvatar(
              child: Icon(Icons.add),
            ),
          ),
          Container(
            height: SizeConfig.screenHeight!*.12,
            width: SizeConfig.screenWidth!*.22,
            child: Image.network("${Data.currentUser.imageUrl}",fit: BoxFit.fitHeight,height: SizeConfig.screenHeight!*.3,
            ),
          ),
        ],
      ) */
