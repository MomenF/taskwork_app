import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskwork_app/Data/Data.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/CommonWeb/webOnlineCircleProfile.dart';

class MobileContactSliderScreen extends StatelessWidget {

static String id  = "/MobileContactSliderScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF0F2F5),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                  backgroundColor: Color(0xffE4E6EB),
                  child: IconButton(onPressed: (){
                    Navigator.pop ;
                  },
                      icon: Icon(Icons.arrow_back_outlined,
                        color: Colors.black,))),
              title: Text("Back"),
            ),

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
      )
    );
  }
}
