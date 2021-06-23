//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tung_app/Core/AppColors.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:tung_app/Core/AppConstrains.dart';
import 'package:tung_app/Core/AppRoutes.dart';
import 'package:tung_app/Core/Widgets/AppMainButton.dart';
import 'package:get/get.dart';

class LoginSecond extends StatefulWidget {
  @override
  _LoginSecondState createState() => _LoginSecondState();
}

class _LoginSecondState extends State<LoginSecond> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: AppColours().BLACK),
      borderRadius: BorderRadius.circular(10.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: Get.height -30,
            width: Get.width,
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 56,
                ),
                Text(
                  "TUNG",
                  style: TextStyle(
                    color: AppColours().LOGOCOLOR,
                    fontSize: 56,
                    fontFamily: "Poppins",
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 5,
                ),
                Text(
                  "Enter Code",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: "Poppins",
                  ),
                ),
                AppConstrains.height65,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  child: PinPut(
                    fieldsCount: 6,
                    eachFieldHeight: 53,
                    onSubmit: (String pin) {},
                    focusNode: _pinPutFocusNode,
                    controller: _pinPutController,
                    submittedFieldDecoration: _pinPutDecoration.copyWith(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    selectedFieldDecoration: _pinPutDecoration,
                    followingFieldDecoration: _pinPutDecoration.copyWith(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: AppColours().BLACK,
                      ),
                    ),
                  ),
                ),
                AppConstrains.height30,

                InkWell(
                  onTap: (){
                    print(_pinPutController.text);
                  },
                  child: Container(
                    child: Text(
                      "Resend Code",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ),

                Expanded(child: Container()),
                Align(child: AppMainButton(title: "Verify".tr, ontap: (){Get.toNamed(AppRoutes.LOGINPAGE3);},), alignment: Alignment.bottomCenter,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
