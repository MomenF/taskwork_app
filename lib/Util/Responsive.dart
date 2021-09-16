import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../contants.dart';

class ResponsiveLayout extends StatelessWidget {
final Widget mobileScreenSize ;
final Widget tabletScreenSize ;
final Widget webScreenSize ;


ResponsiveLayout({required this.mobileScreenSize, required this.tabletScreenSize,
  required this.webScreenSize});

@override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constrains){
          if(constrains.maxWidth >= ConstantValues.kDesktopWidth){
            return webScreenSize ?? mobileScreenSize ;
          }
          if(constrains.maxWidth >= ConstantValues.kTabletWidth){
            return tabletScreenSize ?? mobileScreenSize ;
          }
          else {
            return mobileScreenSize;
          }
        });
  }
}
