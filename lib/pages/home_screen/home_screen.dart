import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jupiter/consts/colors.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Razorpay razorpay;
  TextEditingController textEditingController = new TextEditingController();
  FocusNode textFocusController = FocusNode();
  var msg;


  @override
  void initState() {
    super.initState();

    razorpay = new Razorpay();

    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    razorpay.clear();
  }

  @override
  Widget build(BuildContext context) {

    final List<String> imagePaths = [
      'assets/png/shopping.png',
      'assets/png/pizza.png',
      'assets/png/dog.png',
      'assets/png/popcorn.png'
    ];
    final List<String> amount = <String>['11,200', '8,200', '2,800', '1,300'];
    final List<String> heading = <String>[
      'Shopping',
      'Dinning',
      'Pets',
      'Entertainment'
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 8,right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Jupiter".text.size(30).color(AppColors.whiteColor).bold.make(),
              Icon(
                Icons.settings,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
      // backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 125,
            color: AppColors.primaryColor,
            child: Column(
              children: [
                5.heightBox,
                Container(
                  padding: EdgeInsets.all(14),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  width: double.infinity,
                  height: 110,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      'Account balance'.text.color(Colors.grey).make(),
                      3.heightBox,
                      Row(
                        children: [
                          "\u20B9 2,74,000"
                              .text
                              .bold
                              .color(Colors.black)
                              .size(18)
                              .make(),
                          5.widthBox,
                          Icon(
                            Icons.remove_red_eye,
                            color: Colors.grey,
                          ),
                          Spacer(),
                          InkWell(
                            onTap: (){

                              openCheckout();
                            },
                            child: 'Deposit money'
                                .text
                                .color(AppColors.primaryColor)
                                .bold
                                .make(),
                          )
                        ],
                      ),
                      5.heightBox,
                      Container(
                        color: Colors.grey.withOpacity(0.1),
                        height: 1,
                      ),
                      10.heightBox,
                      Row(
                        children: [
                          'Total 7,99,386 in 3 other accounts'
                              .text
                              .color(Colors.grey)
                              .make(),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey,
                            size: 14,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          15.heightBox,
          Padding(
            padding: const EdgeInsets.only(right: 16,left: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.list_outlined,
                      color: Colors.grey,
                    ),
                    5.widthBox,
                    'Recent transaction'.text.color(Colors.grey).bold.make(),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_up,
                      color: Colors.grey,
                    ),
                  ],
                ),
                10.heightBox,
                Container(
                  height: 1,
                  color: Colors.grey.withOpacity(0.1),
                ),
                5.heightBox,
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.coffee),
                        5.widthBox,
                        Column(
                          children: [
                            " Donald's Coffee"
                                .text
                                .color(Colors.black.withOpacity(0.6))
                                .make(),
                            3.heightBox,
                            'Today 3:34pm'.text.color(Colors.grey).make(),
                          ],
                        ),
                        Spacer(),
                        "\u20B9 780".text.bold.color(Colors.black.withOpacity(0.8)).make(),
                      ],
                    ),
                    20.heightBox,
                    Row(
                      children: [
                        'See all'.text.color(AppColors.primaryColor).make(),
                        2.widthBox,
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.grey,
                          size: 12,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          10.heightBox,
          Container(
            height: 2,
            color: Colors.grey.withOpacity(0.1),
          ),
          15.heightBox,
          Container(
            width: double.infinity,
            height: 125,
            color: AppColors.whiteColor,
            child: Column(
              children: [
                5.heightBox,
                Container(
                  padding: EdgeInsets.all(14),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey, spreadRadius: 0.4)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.lock_outline_rounded,color: Colors.grey,size: 14,),
                          3.widthBox,
                          'Only for verified members'.text.color(Colors.black.withOpacity(0.7)).make(),
                        ],
                      ),
                      6.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "1% cashback on all UPI \nmerchant payments"
                                  .text
                                  .color(Colors.black)
                                  .size(16)
                                  .make(),
                              10.heightBox,
                              Row(
                                children: [
                                  'Scan and pay'.text.color(AppColors.primaryColor).make(),
                                  2.widthBox,
                                  Icon(Icons.arrow_forward_ios_rounded,color: AppColors.primaryColor,size: 12,)
                                ],
                              )

                            ],
                          ),
                          Icon(Icons.qr_code_scanner,size: 70,color: Colors.black,)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          10.heightBox,
          Column(
            children: [
              5.heightBox,
              Container(
                padding: EdgeInsets.all(14),
                margin: EdgeInsets.only(left: 20, right: 20),
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.grey, spreadRadius: 0.4)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    'Your top categories of this month!'.text.color(Colors.black.withOpacity(0.6)).make(),
                    6.heightBox,
                    'Spent \u20B928,500'.text.color(Colors.black).bold.size(18).make(),
                    20.heightBox,

                    SizedBox(
                      height: 100, // Set the fixed height for each item
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 70, // Set the fixed width for each item
                            margin: EdgeInsets.symmetric(horizontal:5),
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
                                  child: Image.asset(
                                    imagePaths[index],
                                    width: 30, // Adjust the width as needed
                                    height: 30, // Adjust the height as needed
                                  ),
                                ),
                                10.heightBox,
                                '\u20B9 ${amount[index]}'.text.color(Colors.black.withOpacity(0.5)).makeCentered(),
                                heading[index].text.color(Colors.grey).overflow(TextOverflow.ellipsis).makeCentered(),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    10.heightBox,
                    Container(height: 1,color: Colors.grey.withOpacity(0.1),),
                    20.heightBox,
                    Row(
                      children: [
                        'See all'.text.color(AppColors.primaryColor).make(),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded,color: AppColors.primaryColor,size: 12,)
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void openCheckout() {
    var options = {
      "key": "rzp_test_QPg118Lg0i6ZgI",
      "amount": 199*100, // Convert Paisa to Rupees
      "name": "Test Payment By vaibhava",
      "description": "This is a Test Payment",
      "timeout": "180",
      "theme.color": "#03be03",
      "currency": "INR",
      "prefill": {"contact": "2323232323", "email": "testByKamlesh@razorpay.com"},
      "external": {
        "wallets": ["paytm"]
      }
    };

    try {
      razorpay.open(options);
    } catch (e) {
      print(e.toString());
    }
  }

  void handlerPaymentSuccess(PaymentSuccessResponse response) {
    print("Pament success");
    msg = "SUCCESS: ${response.paymentId}";
    showToast(msg);
  }

  void handlerErrorFailure(PaymentFailureResponse response) {
    msg = "ERROR: ${response.code} - " + jsonDecode(response.message!)['error']['description'];
    showToast(msg);
  }

  void handlerExternalWallet(ExternalWalletResponse response) {
    msg = "EXTERNAL_WALLET: ${response.walletName}";
    showToast(msg);
  }

  showToast(msg){
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey.withOpacity(0.1),
      textColor: Colors.black54,
    );
  }
}

