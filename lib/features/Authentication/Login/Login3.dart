import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tung_app/Core/AppColors.dart';
import 'package:tung_app/Core/AppConstrains.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

class LoginThree extends StatefulWidget {
  const LoginThree({Key? key}) : super(key: key);

  @override
  _LoginThreeState createState() => _LoginThreeState();
}

class _LoginThreeState extends State<LoginThree> {

  @override
  Widget build(BuildContext context) {
    print(Get.height);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: Get.height < 720 ? Get.height + 100 : Get.height,
          width: Get.width,
          child: Column(children: [
            AppConstrains.height30,
            Container(
              color: Colors.white,
              height: 56,
            ),
            Text(
              "TUNG".tr,
              style: TextStyle(
                color: AppColours().LOGOCOLOR,
                fontSize: 56,
                fontFamily: "Poppins".tr,
              ),
            ),
            Container(
              color: Colors.white,
              height: 38,
            ),
            Text(
              "Enter The Passcode".tr,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontFamily: "Poppins".tr,
              ),
            ),
            AppConstrains.height30,
            SizedBox(
              height: 20,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return CircleAvatar(
                    backgroundColor: index == 0
                        ? AppColours().BLACK
                        : AppColours().PINUNSELECTED,
                    radius: 7,
                  );
                },
                itemCount: 4,
                separatorBuilder: (_, index) {
                  return AppConstrains.width5;
                },
              ),
            ),
            AppConstrains.height55,
            SizedBox(
              width: 250,
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 20,
                    crossAxisCount: 3),
                itemBuilder: (_, index) {
                  return index == 9
                      ? Container()
                      : index == 11
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                onTap: () {},
                                child: Align(
                                  child: Text("Cancel".tr),
                                  alignment: Alignment.center,
                                ),
                              ),
                            )
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                onTap: () {},
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor:
                                      AppColours().PINCODECIRCLES,
                                  child: Text(
                                    "${index == 10 ? 0 : index + 1}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4
                                        ?.copyWith(color: AppColours().BLACK),
                                  ),
                                ),
                              ),
                            );
                },
                itemCount: 12,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
