import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:taskwork_app/SplashScreens/WebSplashScreen.dart';
import 'MainWidgets/Mobile/MobileHome.dart';
import 'MainWidgets/Mobile/body/firstSlider.dart';
import 'MainWidgets/Mobile/body/secondSlider.dart';
import 'MainWidgets/Tablet/DrawerSlider.dart';
import 'bloc/CubitandBloc/MobileCubit/blocObserver.dart';
import 'mainScreens/MainScreen.dart';
import 'mainScreens/MainSplashScreen.dart';
import 'mainScreens/sizeTest.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(
  // DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (context) =>
        MyApp(), // Wrap your app
  // ),
);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Test Task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: MainScreen(),
      initialRoute: WebSplashScreen.id,
      routes: {
        WebSplashScreen.id : (context)=> WebSplashScreen(),
        MainSplashScreen.id : (context)=> MainSplashScreen(),
        MobileSliderToolsScreen.id : (context)=> MobileSliderToolsScreen(),
        MobileContactSliderScreen.id : (context)=> MobileContactSliderScreen(),
        TabletDrawerToolsScreen.id : (context)=> TabletDrawerToolsScreen(),
      },
    );
  }
}
