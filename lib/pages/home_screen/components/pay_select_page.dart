import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jupiter/consts/colors.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jupiter/routes/app_pages.dart';
import 'package:jupiter/widgets/custom_button.dart';
import 'package:velocity_x/velocity_x.dart';

class PaySelectPage extends StatefulWidget {
  const PaySelectPage({Key? key}) : super(key: key);

  @override
  State<PaySelectPage> createState() => _PaySelectPageState();
}

class _PaySelectPageState extends State<PaySelectPage> {
  // Define a list to track the selected item
  int selectedItemIndex = 0;
  final List<String> title = <String>['Savings Account', 'Loans & On-demands Salary', ];
  final List<String> reward = <String>['5X Rewards', '0% Interest', ];
  final List<String> rewardsub = <String>['Earn on Debit Card and UPI spends', 'Repay in 1 month', ];
  final List<String> retuns = <String>[ '1.5% extra returns*','Easy EMI options', ];
  final List<String> retunssub = <String>[ 'Start 0-commission, No-Penalty SIPs','Repay in 3/6/9/12 months', ];
  final List<String> auto = <String>[ 'Auto tracks spends','Instant Disbursal', ];
  final List<String> autosub = <String>[ 'Get insights on monthly spends','No paperwork Get money in minutes', ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(right: 16, left: 16),
        height: 60,
        child: CustomButton(
          backgroundColor: AppColors.primaryColor,
          text: selectedItemIndex ==0 ?"Start with Savings Account" : "Start with Loans & On-demand Salary",
          onPress: () {
            final box = GetStorage();
            box.write('isLogin', true);
            Get.offAllNamed(Routes.HOME);
          },
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/pay_background.jpeg",
                  width: double.infinity,
                  height: 220,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      35.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: () {},
                            icon: Icon(
                              Icons.question_mark,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ],
                      ),
                      "What would you like to start with?"
                          .text
                          .white
                          .size(24)
                          .bold
                          .make(),
                      16.heightBox,
                      "You can always try more features later!"
                          .text
                          .white
                          .size(16)
                          .make(),
                    ],
                  ),
                ),
              ],
            ),


           ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    // When an item is tapped, update the selectedItemIndex
                    setState(() {
                      selectedItemIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16,top: 16),
                    child: Container(
                      height: 230,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: index == selectedItemIndex ? Colors.red : Colors.white),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              16.widthBox,
                              // Text(
                              //   // index == selectedItemIndex ? "Select" : "Saving Account",
                              //   title[index],
                              //   style: TextStyle(
                              //     fontSize: 20,
                              //     fontWeight: FontWeight.bold,
                              //    // color: index == selectedItemIndex ? Colors.red : Colors.black,
                              //   ),
                              // ),
                              title[index].text.size(16).bold.make(),
                              Spacer(),
                              Radio(
                                value: index,
                                groupValue: selectedItemIndex,
                                onChanged: (value) {
                                  // Handle radio button selection if needed
                                },
                                activeColor: Colors.red, // Radio button color
                              ),
                            ],
                          ),
                          10.heightBox,
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.wallet,
                                      color: Colors.green,
                                    ),
                                    SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        reward[index].text.bold.size(14).make(),
                                        rewardsub[index].text.size(8).make(),
                                      ],
                                    ),
                                  ],
                                ),
                                10.heightBox,
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.assignment_return_sharp, // Icon to display
                                      color: Colors.green, // Icon color
                                    ),
                                    8.widthBox,
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        retuns[index].text.bold.size(14).make(),
                                        retunssub[index].text.size(8).make(),
                                      ],
                                    ),
                                  ],
                                ),
                                10.heightBox,
                                Row(
                                  children: [
                                    Icon(
                                      Icons.handshake_outlined, // Icon to display
                                      color: Colors.green, // Icon color
                                    ),
                                    8.widthBox,
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        auto[index].text.bold.size(14).make(),
                                        autosub[index].text.size(8).make(),
                                      ],
                                    ),
                                  ],
                                ),
                                // ... Rest of your code
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
