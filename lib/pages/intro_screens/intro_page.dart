import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jupiter/consts/colors.dart';
import 'package:jupiter/pages/auth/phone_verify_page.dart';
import 'package:jupiter/routes/app_pages.dart';
import 'package:jupiter/widgets/custom_button.dart';
import 'package:velocity_x/velocity_x.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  bool checkValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(right: 16, left: 16),
        width: double.infinity,
        height: 50,
        child: CustomButton(
          backgroundColor: checkValue ? AppColors.primaryColor : Colors.white.withOpacity(0.1),
          text: "Allow",
          onPress: () {
            if(checkValue == true){
              Get.toNamed(Routes.PHONE);
            }
          },
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        // leading: "".text.make(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0,top: 8),
            child: Column(
              children: [
                Icon(Icons.live_help_outlined,color: AppColors.blackColor,size: 25,),
              ],
            ),
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              'Jupiter'.text.bold.color(AppColors.primaryColor).size(50).make(),
              10.heightBox,
              '1-app for everything money'.text.size(20).bold.black.make(),
              80.heightBox,
              CircleAvatar(
                radius: 120,
                backgroundColor: Colors.transparent,
                child: Image.asset('assets/png/jupitor.png'),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    activeColor: checkValue ? AppColors.primaryColor : AppColors.whiteColor,
                    checkColor: checkValue ? AppColors.whiteColor : AppColors.primaryColor,
                    value: checkValue,
                    onChanged: (bool? value) {
                      setState(() {
                        checkValue = value ?? false;
                      });
                    },
                  ),
                  Column(
                    children: [
                      'Give SMS, phone, & location permissions'.text.black.make(),
                      5.heightBox,
                      'This is required to create your account on Jupiter'.text.color(Colors.black.withOpacity(0.6)).size(6).make()
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.info_outline,color: AppColors.primaryColor,),
                ],
              ),
              40.heightBox,
              "By continuing, I agree to Jupiter's T&C, Privacy Policy, Fees & \n                                            charges".text.color(Colors.black.withOpacity(0.6)).size(6).make()
            ],
          ),
        ),
      ),
    );
  }
}
