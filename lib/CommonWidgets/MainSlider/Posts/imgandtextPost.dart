import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/CommonWidgets/CircleProfile/Current.dart';
import 'package:taskwork_app/CommonWidgets/CircleProfile/Online.dart';
import 'package:taskwork_app/CommonWidgets/CircleProfile/WebOnlineCircleProfile.dart';
import 'package:taskwork_app/Data/Data.dart';

class WebPostAndPic extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min ,
        children: [
          ListTile(
            leading: WebOnlineCircleProfile(index: 2,),
            title: Text("${UserData.onLineUsers[2].user}",style: TextStyle(
                fontWeight: FontWeight.bold
            ),),
            subtitle: Text("${DateTime.now().hour} Hours Ago",),
          ),
          SizedBox(height: 10.0),
          Container(
            height: 420.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15.0
                  ),
                  child: Text("${UserData.currentUser.user}  Helloooooooo Helloooooooo Helloooooooo",
                    maxLines: 4,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0
                    ), ),
                ),
                Container(
                width: double.infinity,
                  height: 300,
                    child: Image.network("${UserData.currentUser.imageUrl}",fit: BoxFit.fill,width: double.infinity,)),
                Spacer(),

                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 15.0
                  ),
                  child: Row(
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
                ),
                SizedBox(
                  height: 10.0,
                ),

                Divider(
                  height: 1.0,
                  thickness: 2.0,
                ),
                Container(
                  height: 40.0,
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
        ],
      ),
    );
  }
}
