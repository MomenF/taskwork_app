import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/Data/Data.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/CommonWeb/WebCurrentStory.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/CommonWeb/WebOnlineStory.dart';
import '../../../../contants.dart';


class WebStories extends StatelessWidget {
  // @override
  // Set<PointerDeviceKind> get dragDevices =>
  //     {PointerDeviceKind.touch, PointerDeviceKind.mouse};
  // final ScrollController controller = ScrollController();
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Color(0xffF0F2F5),
      width: double.infinity,
      child: ScrollConfiguration(
          behavior: MyCustomScroll(),
          child: ListView.separated(
            controller: MyCustomScroll.controller,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(
              width: 3.0,
            ),
            itemCount: UserData.onLineUsers.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return WebCurrentStory();
              }
              return WebOnlineStory(index - 1);
            },
          )),
    );
  }
}
