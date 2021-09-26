import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/AudioAndVideoRoom/AudioAndVideoRoom.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/Posts/WebPost.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/PostGenerate/PostGenerate.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/Posts/CarouselPost.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/Posts/WebCarouselSlider.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/Posts/imgandtextPost.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/WebStories/Stories.dart';
import 'package:taskwork_app/Data/Data.dart';
import '../../../contants.dart';
import 'CurrentStory.dart';
import 'Post.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
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
          //===============posts
          Divider(
            thickness: 20.0,
            color: Color(0xffF0F2F5),
            height: 20.0,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                      color: PlatColors.webBorder)),
              child: WebPostAndPic()),
          Divider(
            thickness: 20.0,
            color: Color(0xffF0F2F5),
            height: 20.0,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                      color: PlatColors.webBorder)),
              child: WebCarouselPost(idUser: 2,idPost: 3,)),
          Divider(
            thickness: 20.0,
            color: Color(0xffF0F2F5),
            height: 20.0,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                      color: PlatColors.webBorder)),
              child: WebCarouselSliderPost(
                idPost: 1,
                idUser: 6,
              )),
          Divider(
            thickness: 20.0,
            color: Color(0xffF0F2F5),
            height: 20.0,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                      color: PlatColors.webBorder)),
              child: WebPost(idPost: 5,idUser: 1,)),
          Divider(
            thickness: 20.0,
            color: Color(0xffF0F2F5),
            height: 20.0,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                      color: PlatColors.webBorder)),
              child: WebPost(idUser: 2,idPost: 4,)),
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







