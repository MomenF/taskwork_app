import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/Data/Data.dart';
import 'package:taskwork_app/MainWidgets/Web/WebStories/Stories.dart';


import '../../../contants.dart';
import 'AudioAndVideoRoom/AudioAndVideoRoom.dart';
import 'CurrentStory.dart';
import 'Post.dart';
import 'PostGenerate/PostGenerate.dart';
import 'Stories/Stories.dart';

class BodyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostGenerate(),
          Divider(
            thickness: 5.0,
            color: PlatColors.spaces,
            height: SizeConfig.screenWidth! * .025,
          ),
          AudioAndVideoRoom(),
          Divider(
            thickness: 5.0,
            color: PlatColors.spaces,
            height: SizeConfig.screenWidth! * .025,
          ),
          WebStories(),
          Divider(
            thickness: 5.0,
            color: PlatColors.spaces,
            height: SizeConfig.screenWidth! * .025,
          ),
          Post(),
          Divider(
            thickness: 5.0,
            color: PlatColors.spaces,
            height: SizeConfig.screenWidth! * .025,
          ),
          Post(),
          Divider(
            thickness: 5.0,
            color: PlatColors.spaces,
            height: SizeConfig.screenWidth! * .025,
          ),
          Post(),
          Divider(
            thickness: 5.0,
            color: PlatColors.spaces,
            height: SizeConfig.screenWidth! * .025,
          ),
          // ListView.separated(
          //     separatorBuilder: (context,index)=>Divider(
          //       thickness: 5.0,
          //       color: PlatColors.spaces,
          //       height: SizeConfig.screenWidth! * .025,
          //     ),
          //     itemCount: 5,
          //   itemBuilder: (context,index)=>Post(),
          //
          // ),

        ],
      ),
    );
  }
}







