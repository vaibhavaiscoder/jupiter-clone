import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:jupiter/consts/colors.dart';
import 'package:jupiter/pages/auth/otp_verify_page.dart';
import 'package:jupiter/routes/app_pages.dart';
import 'package:jupiter/widgets/custom_button.dart';
import 'package:velocity_x/velocity_x.dart';

class PhoneVerificationPage extends StatefulWidget {
  const PhoneVerificationPage({super.key});

  @override
  State<PhoneVerificationPage> createState() => _PhoneVerificationPageState();
}

class _PhoneVerificationPageState extends State<PhoneVerificationPage> {
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // fluter 2.x
      backgroundColor: AppColors.whiteColor,
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
                Icon(Icons.live_help_outlined,color: AppColors.blackColor.withOpacity(0.6),size: 25,),
              ],
            ),
          ),

        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(right: 16, left: 16),
        width: double.infinity,
        height: 50,
        child: CustomButton(
          backgroundColor: checkValue ? AppColors.primaryColor : Colors.white.withOpacity(0.1),
          text: "Verify",
          onPress: () {
            if(checkValue == true){
              Get.toNamed(Routes.OTP);
            }
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            10.heightBox,
            Center(
              child: CircleAvatar(
                backgroundColor: AppColors.backgroundColor, // Make the CircleAvatar transparent
                radius: 60,
                child: Image.asset(
                  'assets/png/hand.png',
                  fit: BoxFit.contain, // Make the image fit inside the circle
                ),
              )
            ),
            10.heightBox,
            'Verify your mobile number'.text.size(25).bold.make(),
            10.heightBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      labelText: '+91',labelStyle: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 14,fontWeight: FontWeight.bold),
                      hintText: 'Enter primary mobile number',hintStyle: TextStyle(color: Colors.grey.withOpacity(0.8),fontSize: 14,fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(), // Use OutlineInputBorder for an outline border
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black), // Focused border
                      ),
                    ),

                  ),
                ),
                5.heightBox,
                'Make sure the SIM is active in your device'.text.color(Colors.grey).italic.size(6).make()
              ],
            ),
            Spacer(),
            Row(
              children: [
                SizedBox(
                  height: 22,
                  width: 22,
                  child: Checkbox(
                    activeColor: checkValue ? AppColors.primaryColor : AppColors.whiteColor,
                    checkColor: checkValue ? AppColors.whiteColor : AppColors.primaryColor,
                    value: checkValue,
                    onChanged: (bool? value) {
                      setState(() {
                        checkValue = value ?? false;
                      });
                    },
                  ),
                ),
                10.widthBox,
                'Enable notifications on WhatsaApp'.text.color(AppColors.blackColor.withOpacity(0.6)).make(),
                2.widthBox,
                Icon(Icons.chat,color: Colors.green,)
              ],
            )

          ],
        ),
      ),
    );
  }
}
