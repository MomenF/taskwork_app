import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/CommonWidgets/CircleProfile/Current.dart';
import 'package:taskwork_app/Data/Data.dart';

class WebPost extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min ,
      children: [
        ListTile(
          leading: CurrentCircleProfile(),
          title: Text("${UserData.currentUser.user}",style: TextStyle(
              fontWeight: FontWeight.bold
          ),),
          subtitle: Text("${DateTime.now().hour} Hours Ago",),
        ),
        SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 15.0
          ),
          child: Container(
            height: 140.0,
            child: Column(
              mainAxisSize: MainAxisSize.min ,
              children: [
                Text("${UserData.currentUser.user}  Helloooooooo Helloooooooo Helloooooooo",
                  maxLines: 4,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0
                  ), ),
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(

                      children: [
                        Image.asset("assets/icons/like.png",height: 20.0,),
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
                  height: 10.0,
                ),
                Divider(
                  height: 1.0,
                  thickness: 2.0,
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                          mainAxisAlignment: MainAxisAlignment.center,
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
