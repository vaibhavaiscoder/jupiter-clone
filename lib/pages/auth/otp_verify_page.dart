import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:jupiter/consts/colors.dart';
import 'package:jupiter/pages/auth/adhar_kyc_page.dart';
import 'package:jupiter/pages/auth/video_home_page.dart';
import 'package:jupiter/routes/app_pages.dart';
import 'package:jupiter/widgets/custom_button.dart';
import 'package:velocity_x/velocity_x.dart';

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({super.key});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  var otpController = List.generate(6, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.whiteColor,
        // leading: "".text.make(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0,top: 8),
            child: Column(
              children: [
                Icon(Icons.live_help_outlined,color: AppColors.primaryColor,size: 25,),
                "HELP".text.color(AppColors.primaryColor).size(10).make()
              ],
            ),
          ),

        ],
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.indigo,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  'FEDERAL BANK'.text.color(AppColors.whiteColor).bold.make(),
                  Spacer(),
                  'This is Federal Banks Secure Portal'.text.color(AppColors.whiteColor).size(12).make()
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(17),
                child: Column(
                  children: [
                    'Enter OTP (One Time Password)'.text.bold.make(),
                    20.heightBox,
                    SizedBox(
                      height: 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(
                          6,
                              (index) => SizedBox(
                            width: 40,
                            child: TextFormField(
                              autocorrect: false,
                              autofocus: false,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                              ],
                              keyboardType: TextInputType.number,
                              controller: otpController[index],
                              cursorColor: Colors.indigo,
                              onChanged: (value) {
                                if (value.length == 1 && index <= 4) {
                                  FocusScope.of(context).nextFocus();
                                } else if (value.isEmpty && index > 0) {
                                  // FocusScope.of(context).previousFocus();
                                }
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  // VxToast.show(
                                  //   context,
                                  //   msg: 'Please enter a value',
                                  //   position: VxToastPosition.center,
                                  // );
                                  // return 'Empty';
                                } else if (value.length != 1) {
                                  VxToast.show(
                                    context,
                                    msg: 'Please enter only one digit',
                                    position: VxToastPosition.center,
                                  );
                                  // return 'Empty';
                                }
                                return null;
                              },
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 8),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2),
                                  borderSide: const BorderSide(color: Colors.black12),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2),
                                  borderSide:  BorderSide(color: Colors.black.withOpacity(0.4)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2),
                                  borderSide: const BorderSide(color: Colors.black12),
                                ),
                                // helperText: '',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),




                    25.heightBox,

                    Text(
                      "6 digit OTP is sent to your mobile number\n     connected with your Aadhaar card.",
                      style: TextStyle(
                          fontSize: 12.0, // Adjust font size as needed
                          height: 1.8,   // Set the line height to control spacing between lines
                          color: Colors.black.withOpacity(0.7)
                      ),
                    ),
                    40.heightBox,

                    Column(
                      children: [
                        Text(
                          "I didn't get any OTP",
                          style: TextStyle(
                            fontSize: 12.0, // Adjust font size as needed
                            height: 2.2,   // Set the line height to control spacing between lines
                            color: Colors.indigo.withOpacity(0.8),
                          ),
                        ),
                        Container(
                          height: 1, // Adjust the height of the line as need,ed
                          color: Colors.indigo,
                          width: 100, // Make the line span the width of its parent
                        ),
                      ],
                    ),

                    50.heightBox,
                    Container(
                        padding: EdgeInsets.only(left: 20,right: 20),
                        height: 38,
                        width: double.infinity,
                        child: CustomButton(text: 'PROCEED WITH EKYC',size: 13,backgroundColor: Colors.indigo,onPress:(){
                          Get.toNamed(Routes.AADHAR_KYC);
                        },)),
                    15.heightBox,
                  ],
                ),
              ),
            ),
          ),
          Text("Copyright The Federal Bank Limited, Regd. Office: Aluva, 2020",style: TextStyle(fontSize: 9),)
        ],
      ),
    );
  }
}
