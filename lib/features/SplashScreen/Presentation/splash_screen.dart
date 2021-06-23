import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tung_app/Core/AppRoutes.dart';
import 'package:tung_app/Core/Images.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    splashStart();
    super.initState();
  }

  double initialHeight = 50;
  double initialWidth = 0.2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            curve: Curves.easeIn,
            height: 500,
            width: initialWidth * MediaQuery.of(context).size.width,
            child: SvgPicture.asset(
              Images.MAINLOGO,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }

  splashStart() async {
    await Future.delayed(Duration(milliseconds: 100));
    setState(() {
      // initialHeight = 200;
      initialWidth = 0.85;
    });
    await Future.delayed(Duration(milliseconds: 1100));
    Get.toNamed(AppRoutes.LOGINPAGE);
  }
}
