import 'package:flutter/material.dart';
import 'package:jupiter/consts/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class MoneyScreen extends StatelessWidget {
  const MoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> title = <String>['Money', 'Debt', 'Savings', 'Check'];
    final List<Icon> icons = <Icon>[
      Icon(
        Icons.send_to_mobile,
        size: 30,
        color: AppColors.primaryColor,
      ),
      Icon(
        Icons.account_balance_wallet_rounded,
        size: 30,
        color: AppColors.primaryColor,
      ),
      Icon(
        Icons.savings,
        size: 30,
        color: AppColors.primaryColor,
      ),
      Icon(
        Icons.list_alt,
        size: 30,
        color: AppColors.primaryColor,
      )
    ];

    final List<String> amount = <String>['299', '299', '299', '1,38,990'];
    final List<String> heading = <String>[
      'Lazypay',
      'Rohan',
      'Nikhil ',
      'Blinkit'
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.whiteColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            'Jupiter'.text.bold.color(AppColors.primaryColor).make(),
            Icon(
              Icons.search_sharp,
              color: Colors.grey,
              size: 22,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            50.heightBox,
            Row(
              children: [
                Container(
                  height: 25,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(
                      child: 'Account'.text.white.semiBold.size(14).make()),
                ),
                5.widthBox,
                Container(
                  height: 25,
                  width: 80,
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(
                      child: 'Credit Card'
                          .text
                          .color(AppColors.primaryColor)
                          .semiBold
                          .size(14)
                          .make()),
                ),
                5.widthBox,
                Container(
                  height: 25,
                  width: 70,
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(
                      child: 'Loans'
                          .text
                          .color(AppColors.primaryColor)
                          .semiBold
                          .size(14)
                          .make()),
                ),
              ],
            ),
            50.heightBox,
            Container(
              height: 290,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    // Color of the shadow
                    offset: Offset(0, 2),
                    // Offset of the shadow (horizontal, vertical)
                    blurRadius: 2,
                    // Blur radius of the shadow
                    spreadRadius: 0, // Spread radius of the shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "\u20B9 2,74,000".text.bold.black.size(30).make(),
                    5.heightBox,
                    "Balance - UPI ID: 9876677890@jupiteraxis"
                        .text
                        .color(Colors.grey)
                        .size(10)
                        .make(),
                    20.heightBox,
                    Container(
                      width: 120,
                      height: 30,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          'Add money'.text.white.bold.make(),
                          Icon(Icons.arrow_forward_ios_outlined,
                              color: Colors.white, size: 16)
                        ],
                      ),
                    ),
                    15.heightBox,
                    Container(
                      color: Colors.grey.withOpacity(0.1),
                      height: 1,
                    ),
                    10.heightBox,
                    Center(
                      child: SizedBox(
                        height: 100, // Set the fixed height for each item
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 60, // Set the fixed width for each item
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
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
                                    // child: Icon(Icons.send,size: 30,color: AppColors.primaryColor,),
                                    child: icons[index],
                                  ),
                                  10.heightBox,
                                  title[index]
                                      .text
                                      .color(Colors.grey)
                                      .makeCentered()
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            40.heightBox,
            Row(
              children: [
                'Recent transactions'
                    .text
                    .bold.size(18)
                    .color(Colors.black.withOpacity(0.6))
                    .make(),
                Spacer(),
                'See all'.text.color(AppColors.primaryColor).make(),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 14,
                  color: Colors.grey,
                )
              ],
            ),
            20.heightBox,
            SizedBox(
              height: 100, // Set the fixed height for each item
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  String firstLetter = heading[index]
                      .substring(0, 1); // Get the first letter of the heading
                  return SizedBox(
                    width: 70, // Set the fixed width for each item
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
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
                          child: Text(
                            firstLetter, // Display the first letter as text
                            style: TextStyle(
                              fontSize: 24, // Adjust the font size as needed
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                        10.heightBox,
                        '\u20B9 ${amount[index]}'.text.color(Colors.black.withOpacity(0.5)).makeCentered(),
                        heading[index].text.color(Colors.grey).makeCentered(),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
