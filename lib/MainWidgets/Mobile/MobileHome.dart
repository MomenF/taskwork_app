import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskwork_app/Data/Data.dart';
import 'package:taskwork_app/bloc/CubitandBloc/MobileCubit/cubit.dart';
import 'package:taskwork_app/bloc/CubitandBloc/MobileCubit/state.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:get/get.dart';
import '../../contants.dart';
import 'body/bodyContent.dart';
import 'body/firstSlider.dart';
import 'body/secondSlider.dart';

class MobileHomeScreen extends StatelessWidget {
static String id  = "/HomeScreen";
String iconPath = "assets/icons/tabs/";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
        create: (context)=> MobileCubit(),
      child: BlocConsumer<MobileCubit,MobileState>(
           listener: (context,state){},
        builder: (context,state){
             var cubit  = MobileCubit.get(context);

          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                title: Text("Facebook",style: TextStyle(
                    color: Color(0xFF139EF8),
                    fontWeight: FontWeight.bold
                ),),
                actions: [
                  CircleAvatar(
                    backgroundColor: PlatColors.mainColor,
                    child: IconButton(onPressed: (){}, icon: Icon(
                      Icons.search,
                    )),
                  ),
                  SizedBox(
                    width: SizeConfig.screenWidth !*.02,
                  ),
                  CircleAvatar(
                    backgroundColor: PlatColors.mainColor,
                    child: IconButton(onPressed: (){
              Get.toNamed(MobileContactSliderScreen.id);
                    }, icon: Image.asset("assets/icons/msg.png")),
                  ),
                ],
                bottom:  PreferredSize(
                  preferredSize: Size.fromHeight(50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                          InkWell(
                          onTap: (){
                            cubit.methodHomeSelected();
                          },
                           child:  Image.asset("${cubit.tapHomeSelected? cubit.selectHomeImage : cubit.homeImage }",
                             ),
                          ),
                          InkWell(
                            onTap: (){
                              cubit.methodVideoSelected();
                            },
                            child: Image.asset("${cubit.tapVideoSelected? cubit.selectVideoImage : cubit.videoImage }"),
                          ),
                          InkWell(
                            onTap: (){
                              cubit.methodPageSelected();
                            },
                            child: Image.asset("${cubit.tapPageSelected? cubit.selectPageImage : cubit.pageImage }"),
                          ),
                          InkWell(
                            onTap: (){
                              cubit.methodNotificationSelected();
                            },
                            child: Image.asset("${cubit.tapNotificationSelected? cubit.selectNotificationImage : cubit.notificationImage }",
                            height:cubit.tapNotificationSelected? 37.0 : 33.0 ,
                            ),
                          ),
                          IconButton(
                            onPressed: (){
                              Get.toNamed(MobileSliderToolsScreen.id);
                            },
                            icon: Icon(Icons.menu,color: Colors.grey),
                          ),

                    ],
                  ),

                ),
              ),
              body: BodyContent(),

            ),
          );

        },

      ),

    );
  }
}

