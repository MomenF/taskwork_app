import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/CommonWidgets/CircleProfile/Online.dart';
import 'package:taskwork_app/Data/Data.dart';

import '../../../../contants.dart';

class AudioAndVideoRoom extends StatelessWidget {
  const AudioAndVideoRoom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Audio and video rooms",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16.0),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            height: 40.0,
            child: ListView.separated(
              // physics: NeverScrollableScrollPhysics(),
              // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount:  UserData.onLineUsers.length +1 ,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return SizedBox(
                    height: 25.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "Create Room",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2164AE),
                          ),
                        ),
                        color: Color(0xffE6F2FE),
                        elevation: 0,
                      ),
                    ),
                  );
                }
                return OnlineCircleProfile(index - 1);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 5.0,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
