import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jupiter/pages/auth/phone_verify_page.dart';
import 'package:jupiter/pages/home_screen/components/pay_select_page.dart';
import 'package:jupiter/routes/app_pages.dart';
import 'package:jupiter/widgets/custom_button.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/colors.dart';

class VideoHomePage extends StatelessWidget {
  const VideoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(right: 16, left: 16),
        height: 50,
        child: CustomButton(
          backgroundColor: AppColors.primaryColor,
          text: "Continue",
          onPress: () {
            Get.toNamed(Routes.PAY_SELECT);
          },
        ),
      ),
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shield_moon_outlined,
              size: 17,
              color: Colors.black.withOpacity(0.6),
            ),
            'Securely encrypted'
                .text
                .color(Colors.black.withOpacity(0.6))
                .fontWeight(FontWeight.w400)
                .size(12)
                .make(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            'First things first!'.text.extraBold.size(20).make(),
            10.heightBox,
            'For your security we need to confirm you are not a robot'
                .text
                .color(Colors.black.withOpacity(0.6))
                .fontWeight(FontWeight.w400)
                .size(15)
                .make(),
            100.heightBox,
            Center(
              child: Container(
                width: 150, // Set the desired width
                height: 150, // Set the desired height
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent, // Make the CircleAvatar transparent
                  child: Image.asset(
                    'assets/png/astronout.png',
                    // fit: BoxFit.con,
                  ),
                ),
              ),
            ),
            130.heightBox,
            Center(
              child: 'Before you proceed, please make sure,\n       you have the following in place'
                  .text
                  .color(Colors.black.withOpacity(0.8))
                  .fontWeight(FontWeight.w400)
                  .size(15)
                  .make(),
            ),

            20.heightBox,
            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.08),
                        borderRadius: BorderRadius.circular(10)),
                    width: 110,
                    // color: Colors.amber[600],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.light_mode,color: Color(0xFF204C56),),
                        10.heightBox,
                        'WELL-LIT\n  ROOM'.text.size(10).make()
                      ],
                    ),
                  ),
                  10.widthBox,
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.08),
                        borderRadius: BorderRadius.circular(10)),
                    width: 110,
                    // color: Colors.amber[600],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.music_off,color: Color(0xFF204C56),),
                        10.heightBox,
                        'NOICE\n FREE'.text.size(10).make()
                      ],
                    ),
                  ),
                  10.widthBox,
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.08),
                        borderRadius: BorderRadius.circular(10)),
                    width: 110,
                    // color: Colors.amber[600],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.camera_enhance_outlined,color: Color(0xFF204C56),),
                        10.heightBox,
                        '       CLEAR\nBACKGROUND'.text.size(10).make()
                      ],
                    ),
                  ),                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
