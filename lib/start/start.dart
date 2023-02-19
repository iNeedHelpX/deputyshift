import 'package:deputyshift/colors/colorlist.dart';
import 'package:deputyshift/start/splashpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartApp extends StatefulWidget {
  StartApp({Key? key}) : super(key: key);

  @override
  State<StartApp> createState() => _StartAppState();
}

class _StartAppState extends State<StartApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },

        //perhaps replace this with a call to a switch statement to check for login state?
        child: SplashScreen(),
      ),
    );
  }
}
