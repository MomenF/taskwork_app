import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/CommonWidgets/CircleProfile/Current.dart';

import '../../../../contants.dart';


class WebPostGenerate extends StatelessWidget {


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
                width: 10.0,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffF0F2F5),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        color: Color(0xffF0F2F5),
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        color: Color(0xffF0F2F5),
                      )
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
        SizedBox(
          height: 40.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(),
            child: Row(
              children: [
                Expanded(
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
                              " Photo/Video",
                              style: TextStyle(
                                  color: Colors.grey, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )),
                Expanded(
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
          ),
        ),


      ],
    );
  }
}
