import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/Data/Data.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/CommonWeb/webOnlineCircleProfile.dart';

import '../../contants.dart';

class ContactSliderScreen extends StatelessWidget {
  const ContactSliderScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          color: Color(0xffF0F2F5),
          child: ScrollConfiguration(
            behavior: MyCustomScroll(),
            child: ListView(
              controller: MyCustomScroll.controller,
              children: [
                ListTile(
                  title: Text("Contacts"),
                  trailing : IconButton(onPressed: (){}, icon: Icon(Icons.search)) ,
                ),
                Container(
                  child: ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: UserData.onLineUsers.length ,
                      separatorBuilder: (context,index){
                        return SizedBox(
                          height: 5.0,
                        );
                      },
                      itemBuilder: (context,index){
                        return ListTile(
                          leading: WebOnlineCircleProfile(index),
                          title: Text("${UserData.onLineUsers[index].user}"),
                        );
                      }),
                )

              ],
            ),
          ),
        ));
  }
}
