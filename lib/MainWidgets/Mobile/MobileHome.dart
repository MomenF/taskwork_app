import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskwork_app/CommonWidgets/EndSlider/ContactScreen.dart';
import 'package:taskwork_app/Data/Data.dart';
import 'package:taskwork_app/CommonWidgets/StartSlider/ChatScreen.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:get/get.dart';
import 'package:taskwork_app/MainWidgets/Web/Web.dart';
import 'package:taskwork_app/bloc/CubitandBloc/cubit.dart';
import 'package:taskwork_app/bloc/CubitandBloc/states.dart';
import '../../contants.dart';
import 'MainBody.dart';
import 'body/bodyContent.dart';
import 'body/firstSlider.dart';
import 'body/secondSlider.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class MobileHomeScreen extends StatelessWidget {
  static String id = "/HomeScreen";
  String iconPath = "assets/icons/tabs/";
  var scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocConsumer<TabsCubit, TabsState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = TabsCubit.get(context);

        return SafeArea(
          child: Scaffold(
            key: scaffoldKey,
            endDrawer: ChatScreen(),
            // drawer: TabletDrawerToolsScreen() ,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: Text(
                "Facebook",
                style: TextStyle(
                    color: Color(0xFF139EF8), fontWeight: FontWeight.w700),
              ),
              actions: [
                CircleAvatar(
                  backgroundColor: PlatColors.mainColor,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                      )),
                ),
                SizedBox(
                  width: SizeConfig.screenWidth! * .02,
                ),
                CircleAvatar(
                  backgroundColor: PlatColors.mainColor,
                  child: IconButton(
                      onPressed: () {
                        // Get.toNamed(MobileContactSliderScreen.id);
                        Scaffold.of(context).showBottomSheet((context) => ContactSliderScreen());
                      },
                      icon: Image.asset("assets/icons/msg.png")),
                ),
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50.0),
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
                        cubit.toggleTabs(video: true);
                      },
                      child: Image.asset(
                          "${cubit.tapVideoSelected ? cubit.selectVideoImage : cubit.videoImage}"),
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
                        cubit.toggleTabs(notification: true);
                      },
                      child: Image.asset(
                        "${cubit.tapNotificationSelected ? cubit.selectNotificationImage : cubit.notificationImage}",
                        height: cubit.tapNotificationSelected ? 37.0 : 33.0,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // SliderMenuContainer(
                        //   sliderMain: TabletDrawerToolsScreen(),
                        //   sliderMenu: TabletDrawerToolsScreen() ,
                        //
                        // );
                        scaffoldKey.currentState!
                            .openEndDrawer(); // Get.toNamed(MobileSliderToolsScreen.id);
                      },
                      icon: Icon(Icons.menu, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            // body: BodyContent(),
            body: MobileMainBody(),
          ),
        );
      },
    );
  }
}
