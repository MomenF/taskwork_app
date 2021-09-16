import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/CommonWidgets/CircleProfile/Current.dart';
import 'package:taskwork_app/Data/Data.dart';
import 'package:taskwork_app/contants.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CurrentCircleProfile(),
          title: Text("${UserData.currentUser.user}",style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
          subtitle: Text("${DateTime.now().hour} Hours Ago",),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0
          ),
          child: Container(
            height: 120.0,
            child: Column(
              children: [
                Text("${UserData.currentUser.user}  Helloooooooo Helloooooooo Helloooooooo",
                  maxLines: 4,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0
                  ), ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(

                      children: [
                        Image.asset("assets/icons/like.png",height: SizeConfig.screenHeight!*.025,),
                        Text(" 22"),
                      ],
                    ),
                    Row(
                      children: [
                        Text("309 Comments  13 share",style: TextStyle(
                          color: Color(0xff9A6784)
                        ),)
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 7.0,
                ),
                Divider(
                  height: 1.0,
                  thickness: 2.0,
                ),
                Container(
                  height: 30.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: InkWell(
                        child: Row(
                          children: [
                            Image.asset("assets/icons/makeLike.png"),
                            Text(" Like"),
                          ],
                        ),
                        onTap: (){},
                      )),
                      Expanded(child: InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Image.asset("assets/icons/comment.png"),
                            Text(" Comment"),
                          ],
                        ),
                        onTap: (){},
                      )),
                      Expanded(child: InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset("assets/icons/share.png"),
                            Text(" Share"),
                          ],
                        ),
                        onTap: (){},
                      )),
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ],
    );
  }
}
