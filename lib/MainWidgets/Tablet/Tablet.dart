import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:taskwork_app/CommonWidgets/CircleProfile/Current.dart';
import 'package:taskwork_app/CommonWidgets/EndSlider/ContactScreen.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/MainBody.dart';
import 'package:taskwork_app/Data/Data.dart';
import 'package:taskwork_app/MainWidgets/Mobile/body/secondSlider.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/Posts/WebPost.dart';
import 'package:taskwork_app/CommonWidgets/MainSlider/CommonWeb/webOnlineCircleProfile.dart';
import 'package:taskwork_app/bloc/CubitandBloc/cubit.dart';
import 'package:taskwork_app/bloc/CubitandBloc/states.dart';
import '../../contants.dart';

import '../../CommonWidgets/StartSlider/ChatScreen.dart';

class TabletScreen extends StatelessWidget {
  var scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TabsCubit, TabsState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = TabsCubit.get(context);

        return SafeArea(
          child: Scaffold(
            // drawer: TabletDrawerToolsScreen(),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(100.0),
              child: ScrollConfiguration(
                behavior: MyCustomScroll(),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Image.asset("assets/icons/facebookIcon.png"),
                          CircleAvatar(
                            backgroundColor: PlatColors.webColor,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              cubit.toggleTabs(home: true);
                            },
                            child: Image.asset(
                              "${cubit.tapHomeSelected ? cubit.selectHomeImage : cubit.homeImage}",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              cubit.toggleTabs(friends: true);
                            },
                            child: Image.asset(
                              "${cubit.tapFriendsSelected ? cubit.selectFriendsImage : cubit.friendsImage}",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              cubit.toggleTabs(page: true);
                            },
                            child: Image.asset(
                                "${cubit.tapPageSelected ? cubit.selectPageImage : cubit.pageImage}"),
                          ),
                          InkWell(
                            onTap: () {
                              cubit.toggleTabs(video: true);
                            },
                            child: Image.asset(
                                "${cubit.tapVideoSelected ? cubit.selectVideoImage : cubit.videoImage}"),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            backgroundColor: PlatColors.mainColor,
                            child: IconButton(
                                onPressed: () {
                                  Scaffold.of(context).showBottomSheet((context) => ContactSliderScreen());
                                },
                                icon: Icon(
                                  Icons.menu,
                                  color: Colors.black,
                                )),
                          ),
                          CircleAvatar(
                            backgroundColor: PlatColors.mainColor,
                            child: IconButton(
                                onPressed: () {
                                  Get.to((_)=> ContactSliderScreen());
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                )),
                          ),
                          CircleAvatar(
                            backgroundColor: PlatColors.mainColor,
                            child: IconButton(
                                onPressed: () {},
                                icon: Image.asset("assets/icons/tabs/msg.png")),
                          ),
                          CircleAvatar(
                            backgroundColor: PlatColors.mainColor,
                            child: IconButton(
                                onPressed: () {},
                                icon: Image.asset("assets/icons/blackAlert.png")),
                          ),
                          CircleAvatar(
                            backgroundColor: PlatColors.mainColor,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                  size: 25.0,
                                )),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: Row(
              children: [
                MainBody(),
                ContactSliderScreen()
              ],
            ),
          ),
        );
      },
    );
  }
}

