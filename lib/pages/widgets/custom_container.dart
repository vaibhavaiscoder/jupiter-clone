import 'package:flutter/material.dart';
import 'package:jupiter/consts/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomContainerWidget extends StatelessWidget {
  final String title;
  final Color borderColor;
  final String iconText;
  final String iconDescription;

  CustomContainerWidget({
    required this.title,
    required this.borderColor,
    required this.iconText,
    required this.iconDescription,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Implement the onTap logic if needed
        // For example, you can trigger some action when the container is tapped.
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 230,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: borderColor), // Border color
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
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.primaryColor,
                          width: 1,
                        ),
                      ),
                      width: 20,
                      height: 20,
                    ),
                  )
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
                            Text(
                              iconText,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              iconDescription,
                              style: TextStyle(
                                fontSize: 8,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    10.heightBox,
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
                            Text(
                              iconText,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              iconDescription,
                              style: TextStyle(
                                fontSize: 8,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    10.heightBox,
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
                            Text(
                              iconText,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              iconDescription,
                              style: TextStyle(
                                fontSize: 8,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Usage in your main widget build method:

// CustomContainerWidget(
// title: "Saving Account",
// borderColor: Colors.red,
// iconText: "5X Rewards",
// iconDescription: "Earn on Debit Card and UPI spends",
// ),
// CustomContainerWidget(
// title: "Loans & On-demand Salary",
// borderColor: Colors.green,
// iconText: "5X Rewards",
// iconDescription: "Earn on Debit Card and UPI spends",
// ),
