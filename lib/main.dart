import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'MainControl/MainScreen.dart';
import 'MainControl/MainSplashScreen.dart';
import 'MainWidgets/Mobile/body/firstSlider.dart';
import 'MainWidgets/Mobile/body/secondSlider.dart';
import 'CommonWidgets/StartSlider/ChatScreen.dart';
import 'bloc/CubitandBloc/blocObserver.dart';
import 'bloc/CubitandBloc/cubit.dart';


void main() {
  Bloc.observer = MyBlocObserver();
  runApp(
    // DevicePreview(
      // enabled: !kReleaseMode,
      // builder: (context) =>
    MyApp(), // Wrap your app
    // ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return TabsCubit();
      },
      child: GetMaterialApp(
        // locale: DevicePreview.locale(context),
        // builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        title: 'Test Task',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity
        ),
        home: MainScreen(),
        initialRoute: MainSplashScreen.id,
        routes: {
          MainSplashScreen.id: (context) => MainSplashScreen(),
          // MobileSliderToolsScreen.id: (context) => MobileSliderToolsScreen(),
          // MobileContactSliderScreen.id: (context) =>
          //     MobileContactSliderScreen(),
          // ChatScreen.id: (context) => ChatScreen(),
        },
      ),
    );
  }
}
