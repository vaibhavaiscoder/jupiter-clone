import 'package:flutter/material.dart';
import 'package:jupiter/consts/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({super.key});



  @override
  Widget build(BuildContext context) {
    final List<Icon> icons = <Icon>[
      Icon(
        Icons.speaker_notes_outlined,
        size: 30,
        color: Colors.black.withOpacity(0.5),
      ),
      Icon(
        Icons.send_rounded,
        size: 30,
        color: Colors.black.withOpacity(0.5),
      ),
      Icon(
        Icons.savings,
        size: 30,
        color: Colors.black.withOpacity(0.5),
      ),
      Icon(
        Icons.add,
        size: 30,
        color: Colors.black.withOpacity(0.5),
      )
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Jupiter".text.size(30).color(AppColors.whiteColor).bold.make(),
              Icon(
                Icons.more_vert_outlined,
                size: 26,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0), // Set the radius for the bottom-left corner
                  bottomRight: Radius.circular(25.0), // Set the radius for the bottom-right corner
                ),
              ),
              width: double.infinity,
              height: 250,
              child: Column(
                children: [
                  5.heightBox,
                  Container(
                    padding: EdgeInsets.all(14),
                    margin: EdgeInsets.only(left: 20, right: 20),
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
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
                    ),
                  ),
                  10.heightBox,
                  'Scan and pay'.text.white.bold.make()
                ],
              ),
            ),
            SizedBox(
              height: 100, // Set the fixed height for each item
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 90, // Set the fixed width for each item
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
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
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0), // Set the radius for the bottom-left corner
                  bottomRight: Radius.circular(25.0), // Set the radius for the bottom-right corner
                ),
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        'Recent transactions'.text.color(Colors.black).bold.make(),
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
                    20.heightBox,

                    Row(
                      children: [
                        '  See all'.text.color(AppColors.primaryColor).make(),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded,color: AppColors.primaryColor,size: 12,)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            15.heightBox,
          ],
        ),
      ),
    );
  }
}
