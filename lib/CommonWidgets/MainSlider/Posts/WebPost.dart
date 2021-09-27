import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:taskwork_app/CommonWidgets/CircleProfile/Current.dart';
import 'package:taskwork_app/CommonWidgets/CircleProfile/WebOnlineCircleProfile.dart';
import 'package:taskwork_app/Data/Data.dart';

import '../../../contants.dart';

class WebPost extends StatelessWidget {

  int idUser ;
  int idPost ;

  WebPost({required this.idUser, required this.idPost });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: WebOnlineCircleProfile(index: idPost,),
          title: Text(
            "${UserData.onLineUsers[idPost].user}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "${DateTime.now().hour} Hours Ago",
          ),
        ),
        SizedBox(height: 10.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      "${UserData.currentUser.user}  Helloooooooo Helloooooooo Helloooooooo",
                      maxLines: 4,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/icons/like.png",
                              height: 20.0,
                            ),
                            Text(" 22"),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "309 Comments  13 share",
                              style: TextStyle(color: Color(0xff9A6784)),
                            )
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
                        Expanded(
                            child: InkWell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icons/makeLike.png"),
                              Text(" Like"),
                            ],
                          ),
                          onTap: () {},
                        )),
                        Expanded(
                            child: InkWell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icons/comment.png"),
                              Text(" Comment"),
                            ],
                          ),
                          onTap: () {},
                        )),
                        Expanded(
                            child: InkWell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icons/share.png"),
                              Text(" Share"),
                            ],
                          ),
                          onTap: () {},
                        )),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    thickness: 2.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 5.0
              ),
              height: 70.0,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    WebOnlineCircleProfile(
                      index: idUser,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(

                          decoration: BoxDecoration(
                            color: Color(0xffF0F2F5),
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0 ,
                            vertical: 5.0
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${UserData.onLineUsers[idUser].user}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                  fontSize: 16,
                                  letterSpacing: 1.0,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Thanks Every one",
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 15.0,
                            ),

                            Text("Like . " ,style: TextStyle(
                                fontWeight: FontWeight.w400
                            ),),
                            Text("Reply . ",style: TextStyle(
                                fontWeight: FontWeight.w400
                            ),),
                          ],
                        )
                      ],
                    ),
                  ]),
            ),
          ],
        ),
      ],
    );
  }
}
