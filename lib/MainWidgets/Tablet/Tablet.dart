import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:taskwork_app/CommonWidgets/CircleProfile/Current.dart';
import 'package:taskwork_app/Data/Data.dart';
import 'package:taskwork_app/MainWidgets/Mobile/body/secondSlider.dart';
import 'package:taskwork_app/MainWidgets/Web/WebAudioAndVideoRoom/AudioAndVideoRoom.dart';
import 'package:taskwork_app/MainWidgets/Web/WebPost.dart';
import 'package:taskwork_app/MainWidgets/Web/WebPostGenerate/PostGenerate.dart';
import 'package:taskwork_app/MainWidgets/Web/WebStories/Stories.dart';
import 'package:taskwork_app/MainWidgets/Web/webOnlineCircleProfile.dart';
import 'package:taskwork_app/bloc/CubitandBloc/TabletCubit/TabletCubit.dart';
import 'package:taskwork_app/bloc/CubitandBloc/TabletCubit/TabletState.dart';
import '../../contants.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import 'DrawerSlider.dart';


class TabletScreen extends StatelessWidget {
  String iconPath = "assets/icons/tabs/";

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context)=>TabletCubit(),
      child: BlocConsumer<TabletCubit,TabletState>(
        listener: (context,state){},
        builder: (context,state){
          var cubit  = TabletCubit().get(context);

          return SafeArea(
            child: Scaffold(
              drawer: TabletDrawerToolsScreen(),
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(100.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Image.asset("assets/icons/facebookIcon.png"),
                          CircleAvatar(
                            backgroundColor: PlatColors.webColor ,
                            child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.search,color: Colors.black,),
                            ),
                          )

                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      flex: 3,
                      child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: (){
                                  cubit.methodHomeSelected();
                                },
                                child: Image.asset("${cubit.tapHomeSelected? cubit.selectHomeImage : cubit.homeImage }",
                                  height:cubit.tapHomeSelected? 30.0 : 32.0 ,
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
                                child: Image.asset("${cubit.tapVideoSelected? cubit.selectVideoImage : cubit.videoImage }"
                                ,height: cubit.tapVideoSelected? 35.0 : 28.0,
                                ),
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
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          IconButton(onPressed: (){
                            Get.toNamed(TabletDrawerToolsScreen.id);
                          }, icon: Icon(Icons.menu,color: Colors.black,)),
                          Spacer(),
                          CircleAvatar(
                            backgroundColor: PlatColors.mainColor,
                            child: IconButton(onPressed: (){},
                                icon: Icon(Icons.add ,color: Colors.black,)),
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
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5.0
                        ),
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
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Color(0xffF0F2F5),
                        child: SingleChildScrollView(
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
                        ),
                      )),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
