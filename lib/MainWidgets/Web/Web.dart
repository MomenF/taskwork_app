import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskwork_app/CommonWidgets/CircleProfile/Current.dart';
import 'package:taskwork_app/CommonWidgets/CircleProfile/Online.dart';
import 'package:taskwork_app/Data/Data.dart';
import 'package:taskwork_app/MainWidgets/Mobile/body/Post.dart';
import 'package:taskwork_app/MainWidgets/Mobile/body/Stories/Stories.dart';
import 'package:taskwork_app/MainWidgets/Web/webOnlineCircleProfile.dart';
import 'package:heroicons/heroicons.dart';
import 'package:taskwork_app/bloc/CubitandBloc/WebCubit/cubit.dart';
import 'package:taskwork_app/bloc/CubitandBloc/WebCubit/state.dart';
import '../../contants.dart';
import 'AppBarCurrentCircleProfile.dart';
import 'WebAudioAndVideoRoom/AudioAndVideoRoom.dart';
import 'WebPost.dart';
import 'WebPostGenerate/PostGenerate.dart';
import 'WebStories/Stories.dart';
import 'package:shimmer_animation/shimmer_animation.dart';




class WebScreen extends StatelessWidget {
  String iconPath = "assets/icons/tabs/";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> WebCubit(),
      child: BlocConsumer<WebCubit,WebState>(
        listener: (context,state){} ,
        builder: (context,state){
          var cubit = WebCubit.get(context);
          return SafeArea(
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(100.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Image.asset("assets/icons/facebookIcon.png"),

                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffF0F2F5),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      color: Color(0xffF0F2F5),
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      color: Color(0xffF0F2F5),
                                    )
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                                hintText: "Search Facebook",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      flex: 4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: (){
                        cubit.methodHomeSelected();
                            },
                            child: Image.asset("${cubit.tapHomeSelected?cubit.selectHomeImage : cubit.homeImage }",
                            ),),
                          InkWell(
                            onTap: (){
                              cubit.methodFriendsSelected();
                            },
                            child: Image.asset("${cubit.tapFriendsSelected? cubit.selectFriendsImage : cubit.friendsImage }",
                            ),),
                          InkWell(
                            onTap: (){
                              cubit.methodPageSelected();
                            },
                            child: Image.asset("${cubit.tapPageSelected? cubit.selectPageImage : cubit.pageImage }"),
                          ),
                          InkWell(
                            onTap: (){
                              cubit.methodVideoSelected();
                            },
                            child: Image.asset("${cubit.tapVideoSelected? cubit.selectVideoImage : cubit.videoImage }"),
                          ),
                          InkWell(
                            onTap: (){
                              cubit.methodGroupSelected();
                            },
                            child: Image.asset("${cubit.tapGroupSelected? cubit.selectGroupImage : cubit.groupImage }"),

                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(

                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5.0 ,horizontal: 5.0),
                              child: Row(
                                children: [
                                  Container(
                                    height : 30.0,
                                    width: 30.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle
                                    ),
                                    child: AppBarCurrentCircleProfile(),
                                  ),
                                  Text(" Momen"),
                                ],

                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: PlatColors.mainColor,
                            child: IconButton(onPressed: (){},
                                icon: Icon(Icons.apps ,color: Colors.black,)),
                          ),
                          CircleAvatar(
                            backgroundColor: PlatColors.mainColor,
                            child: IconButton(onPressed: (){},
                                icon: Image.asset("assets/icons/tabs/msg.png")),
                          ),
                          CircleAvatar(
                            backgroundColor: PlatColors.mainColor,
                            child: IconButton(onPressed: (){},
                                icon: Image.asset("assets/icons/blackAlert.png")),
                          ),
                          CircleAvatar(
                            backgroundColor: PlatColors.mainColor,
                            child: IconButton(onPressed: (){},
                                icon: Icon(Icons.arrow_drop_down,color: Colors.black,size: 25.0,)),
                          ),



                        ],
                      ),
                    ),
                  ],
                ),

              ),
              body: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Color(0xffF0F2F5),
                        child: ListView(
                          children: [
                            ListTile(
                              leading: CurrentCircleProfile(),
                              title: Text("${UserData.currentUser.user}"),
                            ),
                            ListTile(
                              leading: Image.asset("assets/icons/tabs/friends.png"),
                              title: Text("Friends"),
                            ),
                            ListTile(
                              leading: Image.asset("assets/icons/tabs/groups.png"),
                              title: Text("Groups"),
                            ),
                            ListTile(
                              leading: Image.asset("assets/icons/tabs/pages.png"),
                              title: Text("Pages"),
                            ),
                            ListTile(
                              leading: Image.asset("assets/icons/tabs/memory.png"),
                              title: Text("Memories"),
                            ),
                            ListTile(
                              leading: Image.asset("assets/icons/tabs/jops.png"),
                              title: Text("Jops"),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Color(0xffE4E6EB),
                                child: Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color: Colors.black,
                                ),
                              ),
                              title: Text("Other"),
                            ),

                          ],
                        ),
                      )),
                  Expanded(
                      flex: 3,
                      child: Container(
                        color: Color(0xffF0F2F5),
                        child: ListView(
                          children: [
                            WebStories(),
                            Divider(
                              color: Color(0xffF0F2F5),
                              height: 15.0,
                              thickness: 15.0 ,

                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                        color: PlatColors.webBorder
                                    )
                                ),
                                child: WebPostGenerate()),
                            Divider(
                              color: Color(0xffF0F2F5),
                              height: 10.0,
                              thickness: 10.0 ,

                            ),

                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                        color: PlatColors.webBorder
                                    )
                                ),
                                child: WebAudioAndVideoRoom()),
                            //=====Posts
                            Divider(
                              thickness: 20.0,
                              color: Color(0xffF0F2F5),
                              height: 20.0,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                        color: PlatColors.webBorder
                                    )
                                ),
                                child: WebPost()),
                            Divider(
                              thickness: 20.0,
                              color: Color(0xffF0F2F5),
                              height: 20.0,
                            ),
                            Divider(
                              thickness: 20.0,
                              color: Color(0xffF0F2F5),
                              height: 20.0,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                        color: PlatColors.webBorder
                                    )
                                ),
                                child: WebPost()),
                            Divider(
                              thickness: 20.0,
                              color: Color(0xffF0F2F5),
                              height: 20.0,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                        color: PlatColors.webBorder
                                    )
                                ),
                                child: WebPost()),
                            Divider(
                              thickness: 20.0,
                              color: Color(0xffF0F2F5),
                              height: 20.0,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                        color: PlatColors.webBorder
                                    )
                                ),
                                child: WebPost()),


                          ],
                        ),
                      )),
                  ContactSliderScreen(),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ContactSliderScreen extends StatelessWidget {
  const ContactSliderScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          color: Color(0xffF0F2F5),
      child: Column(
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
    ));
  }
}
