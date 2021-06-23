import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tung_app/Core/AppColors.dart';
import 'package:tung_app/Core/AppRoutes.dart';

class AppMainButton extends StatelessWidget {
  Function? ontap;
  String title;
  Color? color;

  AppMainButton({Key? key, this.ontap,required this.title, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ontap?.call();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 33, right: 33, bottom: 20),
        child: Container(
          child: Center(
            child: Text(
              title.toString(), style:
            TextStyle(
              fontSize: 14,
              fontFamily: "Poppins",
              color: AppColours().WHITE,
            ),
            ),
          ),
          decoration: BoxDecoration(
            color: color ?? AppColours().VERIFICATIONBUTTON,
            borderRadius: BorderRadius.circular(10),
          ),
          height: 45,
          width: 250,
        ),
      ),
    );
  }
}
