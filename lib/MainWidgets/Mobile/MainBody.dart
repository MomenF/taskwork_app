import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/Posts/WebPost.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/Posts/CarouselPost.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/Posts/WebCarouselSlider.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/Posts/imgandtextPost.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/WebAudioAndVideoRoom/AudioAndVideoRoom.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/WebPostGenerate/PostGenerate.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/WebStories/Stories.dart';
import '../../contants.dart';


class MobileMainBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Container(
        color: Color(0xffF0F2F5),
        child: ListView(
          children: [
            WebStories(),
            Divider(
              color: Color(0xffF0F2F5),
              height: 15.0,
              thickness: 15.0,
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                        color: PlatColors.webBorder)),
                child: WebPostGenerate()),
            Divider(
              color: Color(0xffF0F2F5),
              height: 10.0,
              thickness: 10.0,
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                        color: PlatColors.webBorder)),
                child: WebAudioAndVideoRoom()),
            //=====Posts
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
          ],
        ),
      ),
    );
  }
}
