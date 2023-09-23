import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jupiter/consts/colors.dart';
import 'package:jupiter/widgets/custom_circle.dart';
import 'package:velocity_x/velocity_x.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
              children: [
                SizedBox(
                  height: 420,
                  child: Stack(
                    children: <Widget>[
                      Column(
                        children: [
                          30.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              "Jupiter".text.size(35).color(AppColors.whiteColor).bold.make(),
                              Icon(
                                Icons.more_vert_outlined,
                                size: 26,
                                color: Colors.white,
                              )                      ],
                          ).paddingOnly(left: 16.0,right: 16.0),
                          10.heightBox,

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  'Account balance'
                                      .text
                                      .color(Colors.black45)
                                      .size(14)
                                      .make(),
                                  Spacer(),
                                  'Bank details'
                                      .text
                                      .color(Colors.black45)
                                      .size(14)
                                      .make(),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.black,
                                    size: 12,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.black,
                                    size: 12,
                                  ),
                                ],
                              ),
                              20.heightBox,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  "\u20B950,000"
                                      .text
                                      .bold
                                      .color(AppColors.primaryColor)
                                      .size(40)
                                      .make(),
                                  10.widthBox,
                                  Icon(Icons.remove_red_eye,color: Colors.black,size: 20,)
                                ],
                              ),
                              Container(
                                width: 180,
                                height: 2,
                                color: Colors.black,
                              ),
                              10.heightBox,
                              "Networth".text.italic.color(Colors.grey).make(),
                              10.heightBox,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  "Total \u20B969,000 in 4 accounts".text.italic.color(Colors.black).size(8).bold.make(),
                                  Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 12,)
                                ],
                              )
                            ],
                          ).box.height(180).withDecoration(BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16))).padding(EdgeInsets.all(14)).margin(EdgeInsets.only(left: 15, right: 15)).white.make(),

                          10.heightBox,
                          'Scan and pay'.text.white.bold.make()
                        ],
                      ).box.width(double.infinity).height(340).withDecoration(BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25.0), // Set the radius for the bottom-left corner
                          bottomRight: Radius.circular(25.0), // Set the radius for the bottom-right corner
                        ),
                      ),).make(),
                      Positioned(
                          top: 300,
                          right: 20,
                          child: Row(
                            children: [
                              CustomCircleWidget(icon: Icons.speaker_notes_outlined,iconColor: Colors.black.withOpacity(0.6), backgroundColor: Colors.white, size: 55,),
                              15.widthBox,
                              CustomCircleWidget(icon: Icons.send_rounded,iconColor: Colors.black.withOpacity(0.6), backgroundColor: Colors.white, size: 55,),
                              15.widthBox,
                              CustomCircleWidget(icon: Icons.qr_code_2,iconColor: Colors.black.withOpacity(0.6), backgroundColor: Colors.teal, size: 75,borderWidth: 5.0,
                                borderColor: Colors.tealAccent, // Set border color
                              ),
                              15.widthBox,
                              CustomCircleWidget(icon: Icons.savings,iconColor: Colors.black.withOpacity(0.6), backgroundColor: Colors.white, size: 55,),
                              15.widthBox,
                              CustomCircleWidget(icon: Icons.add,iconColor: Colors.black.withOpacity(0.6), backgroundColor: Colors.white, size: 55),
                            ],
                          )
                        // .paddingOnly(left: 10,right: 10)
                      ),
                    ],
                  ),
                ),
                10.heightBox,
                Column(
                      children: [
                        Row(
                          children: [
                            'Recent transactions'.text.italic.color(Colors.black).bold.make(),
                            Spacer(),
                            Icon(Icons.keyboard_arrow_up)
                          ],
                        ),
                        10.heightBox,
                        Container(width: 300,height: 1,color: Colors.black,),
                        20.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 50, // Set the fixed width for each item
                              margin: EdgeInsets.symmetric(horizontal:5),
                              child: Container(
                                padding: EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      blurRadius: 2,
                                      offset: Offset(1, 1),
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/png/pizza.png',
                                  width: 30, // Adjust the width as needed
                                  height: 30, // Adjust the height as needed
                                ),
                              ),
                            ),
                            'Paid to Amazon.in'.text.color(Colors.black.withOpacity(0.6)).size(18).italic.make(),
                            "\u20B9 789".text.color(Colors.black).bold.make()

                          ],
                        ),
                        10.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 50, // Set the fixed width for each item
                              margin: EdgeInsets.symmetric(horizontal:5),
                              child: Container(
                                padding: EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      blurRadius: 2,
                                      offset: Offset(1, 1),
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/png/shopping.png',
                                  width: 30, // Adjust the width as needed
                                  height: 30, // Adjust the height as needed
                                ),
                              ),
                            ),
                            'Paid to Netflix'.text.color(Colors.black.withOpacity(0.6)).size(18).italic.make(),
                            "\u20B91400".text.color(Colors.black).bold.make()

                          ],
                        ),
                        10.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 50, // Set the fixed width for each item
                              margin: EdgeInsets.symmetric(horizontal:5),
                              child: Container(
                                padding: EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      blurRadius: 2,
                                      offset: Offset(1, 1),
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/png/popcorn.png',
                                  width: 30, // Adjust the width as needed
                                  height: 30, // Adjust the height as needed
                                ),
                              ),
                            ),
                            'Received from Ranjeth'.text.color(Colors.black.withOpacity(0.6)).size(18).italic.make(),
                            "+\u20B92800".text.color(Colors.black).bold.make()

                          ],
                        ),
                        10.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 50, // Set the fixed width for each item
                              margin: EdgeInsets.symmetric(horizontal:5),
                              child: Container(
                                padding: EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      blurRadius: 2,
                                      offset: Offset(1, 1),
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/png/dog.png',
                                  width: 30, // Adjust the width as needed
                                  height: 30, // Adjust the height as needed
                                ),
                              ),
                            ),
                            'Paid to Swiggy'.text.color(Colors.black.withOpacity(0.6)).size(18).italic.make(),
                            "\u20B9234".text.color(Colors.black).bold.make()

                          ],
                        ),
                        30.heightBox,

                        Row(
                          children: [
                            '  See all'.text.italic.color(AppColors.primaryColor).make(),
                            Spacer(),
                            'Track your spends'.text.italic.color(AppColors.primaryColor).make(),
                            Icon(Icons.arrow_forward_ios_rounded,color: AppColors.primaryColor,size: 12,)
                          ],
                        ),
                      ],
                    ).paddingAll(16),

                15.heightBox,
              ],
            ),
      ),


    );
  }
}
