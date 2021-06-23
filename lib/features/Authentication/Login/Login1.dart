import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tung_app/Core/AppColors.dart';
import 'package:tung_app/Core/AppConstrains.dart';
import 'package:tung_app/Core/AppRoutes.dart';
import 'package:tung_app/Core/AppSpace.dart';
import 'package:tung_app/Core/Language.dart';
import 'package:tung_app/Core/Widgets/AppMainButton.dart';
import 'package:country_code_picker/country_code_picker.dart';

class Login1 extends StatelessWidget {
  const Login1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
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
              "Welcome",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontFamily: "Poppins",
              ),
            ),
            Container(
              color: Colors.white,
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Full Name ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintStyle: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.black,
                      fontSize: 14,
                    )),
              ),
            ),
            Container(
              color: Colors.white,
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  Container(
                    height: 53,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: AppColours().SHADOWCOLOR,
                            offset: Offset.zero),
                      ],
                    ),
                    child: CountryCodePicker(
                      initialSelection: '+880',
                      favorite: ['+880'],
                      textStyle: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColours().BLACK),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Mobile Number ",
                          hintStyle: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.black,
                            fontSize: 14,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 24,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                child: Text("A verification code".tr,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            AppMainButton(
              title: "Send verification code".tr,
              ontap: (){
                Get.toNamed(AppRoutes.LOGINPAGE2);
              },
            ),
          ],
        ),
      ),
    );
  }
}
