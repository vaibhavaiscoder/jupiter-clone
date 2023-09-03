import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:jupiter/consts/colors.dart';
import 'package:jupiter/pages/auth/video_home_page.dart';
import 'package:jupiter/routes/app_pages.dart';
import 'package:jupiter/widgets/custom_button.dart';
import 'package:velocity_x/velocity_x.dart';

class AdharKycScreen extends StatefulWidget {
  const AdharKycScreen({super.key});

  @override
  State<AdharKycScreen> createState() => _AdharKycScreenState();
}

class _AdharKycScreenState extends State<AdharKycScreen> {
  bool checkValue = false;

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
                    'Enter Aadhaar Number'.text.bold.make(),
                    20.heightBox,
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30),
                      child: SizedBox(
                        height: 35,
                        width: double.infinity,
                        child: TextField(
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Enter Aadhaar Number/16 digit Virtual ID',labelStyle: TextStyle(color: Colors.grey.withOpacity(0.8),fontSize: 10),
                            border: OutlineInputBorder(), // Use OutlineInputBorder for an outline border
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide:  BorderSide(color: Colors.black.withOpacity(0.4)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    25.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
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
                        Flexible(
                          child: Text(
                            'I hereby state that I have no objection for Federal ',
                                // 'I hereby state that I have no objection for Federal '
                                // 'I hereby state that I have no objection for Federal '
                                // 'I hereby state that I have no objection for Federal '
                                // 'I hereby state that I have no objection for Federal '
                                // 'I hereby state that I have no objection for Federal',
                            style: TextStyle(
                              fontSize: 12.0, // Adjust font size as needed
                              color: Colors.black.withOpacity(0.7)
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "I hereby state that I have no objection for Federal I hereby state that I have no objection for Federal I hereby state that I have no objection for Federal I hereby state that I have no objection for FederalI hereby state that I have no objection for Federal I hereby state that I have no objection for Federal ",
                      style: TextStyle(
                        fontSize: 12.0, // Adjust font size as needed
                        height: 2.2,   // Set the line height to control spacing between lines
                        color: Colors.black.withOpacity(0.7)
                      ),
                    ),


                    10.heightBox,
                    Container(
                      padding: EdgeInsets.only(left: 20,right: 20),
                      height: 35,
                        width: double.infinity,
                        child: CustomButton(text: 'PERFORM EKYC',size: 13,backgroundColor: checkValue ? Colors.indigo : Colors.grey,onPress:(){
                          if(checkValue == true){
                            Get.toNamed(Routes.VIDEO_PAGE);
                          }
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
