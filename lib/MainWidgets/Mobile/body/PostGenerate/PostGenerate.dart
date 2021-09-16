import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/CommonWidgets/CircleProfile/Current.dart';

import '../../../../contants.dart';


class PostGenerate extends StatelessWidget {
  const PostGenerate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              CurrentCircleProfile(),
              SizedBox(
                width: SizeConfig.screenWidth! * .025,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    hintText: "What's on your mind?",
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 5.0,
          thickness: .3,
          color: PlatColors.spaces,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        right:
                        BorderSide(color: PlatColors.spaces, width: .7))),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/live.png"),
                      Text(
                        " Live",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(color: PlatColors.spaces, width: .7),
                      )),
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/photos.png"),
                        Text(
                          "Photo/Video",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                )),
            Expanded(
              flex: 2,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/room.png"),
                      Text(
                        " Room",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )),
          ],
        ),

      ],
    );
  }
}
