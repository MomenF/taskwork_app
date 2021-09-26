import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizeTest extends StatelessWidget {
  const SizeTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.orangeAccent,
        child: Container(
          child: LayoutBuilder(

            builder: (context,constraints) {
              double localHeight = constraints.maxHeight;
              double localWidth = constraints.maxWidth;
              print("local height is ${localHeight}");
              print("local Width is ${localWidth}");
              print("media height is ${screenHeight}");
              print("media width is ${screenWidth}");
              return Center(
                child: Container(

                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
