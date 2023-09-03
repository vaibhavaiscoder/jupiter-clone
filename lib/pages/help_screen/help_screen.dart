import 'package:flutter/material.dart';
import 'package:jupiter/consts/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class HelpScreen extends StatefulWidget {
  HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  bool isExpanded = false;

  final List<String> helpTitle = <String>[
    "Why do you need my personal details such as father's name and mother's name?",
    'Will Jupiter share my data with any third party or outsider',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.whiteColor,
        title: "Help".text.black.bold.makeCentered(), // Center-aligned text
        actions: [
          // IconButton(
          //   icon: Icon(
          //     Icons.close,
          //     color: Colors.grey,
          //     size: 28,
          //   ), // "x" icon
          //   onPressed: () {
          //     // Add the functionality to close the screen or perform other actions here
          //   },
          // ),
        ],
      ),
      body: Column(
        children: [
          5.heightBox,
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: "You seem to be stuck at Tell us a bit about yourself step."
                .text
                .bold
                .black
                .size(16)
                .make(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: "Please see if any of following questions help solve your concern"
                .text
                .color(Colors.black54)
                .make(),
          ),
          15.heightBox,
          ListView.builder(
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    height: 80,
                    color: Colors.white,
                    child: Center(
                      child: Row(
                        children: [
                          Flexible(
                            child: helpTitle[index].text.color(Colors.black54).make(),
                          ),
                          Icon(Icons.keyboard_arrow_down_outlined,color: Colors.grey,)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 2,
                  )
                ],
              );
            },
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              "Still got questions? ".text.make(),
              "Drop us a mail".text.color(AppColors.primaryColor).bold.make(),
            ],
          ),
          3.heightBox,
          "We'll connect in couple of hours"
              .text
              .color(Colors.grey)
              .size(8)
              .make(),
          50.heightBox,
        ],
      ),
    );
  }
}
