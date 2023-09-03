import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:jupiter/consts/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class RewardsScreen extends StatelessWidget {
  const RewardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Icon> icons = [
      Icon(Icons.local_offer_outlined,color: Colors.white,size: 35,),
      Icon(Icons.wallet,color: Colors.white,size: 35,),
      Icon(Icons.person_add_alt,color: Colors.white,size: 35,),
      Icon(Icons.question_answer_outlined,color: Colors.white,size: 35,),
    ];
    final List<String> amount = <String>['11,200', '8,200', '2,800', '1,300'];
    final List<String> heading = <String>[
      'Offers',
      'Vouchers',
      'Refer',
      'Quest'
    ];

    final List<String> imagePaths = [
      'assets/images/offer1.jpg',
      'assets/images/offer2.jpg',
      'assets/images/offer3.jpg',
      'assets/images/offer4.jpg',
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.heightBox,
            Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,size: 22,),
            20.heightBox,
            'Rewards'.text.white.extraBold.size(26).make(),
            5.heightBox,
            Container(
              padding: EdgeInsets.all(14),
              // margin: EdgeInsets.only(left: 20, right: 20),
              width: double.infinity,
              height: 190,
              decoration: BoxDecoration(
                  gradient:  LinearGradient(
                    colors: [
                      Vx.black,
                      Colors.grey.withOpacity(0.5),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  'Total Jewels'.text.color(Colors.white).make(),
                  Row(
                    children: [
                      '500'.text.color(Colors.white).size(24).bold.make(),
                      3.widthBox,
                      Icon(Icons.hexagon,color: AppColors.primaryColor,size: 30,),
                      Spacer(),
                      Container(
                        width: 90,
                        height: 35,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: 'Redeem'.text.size(14).white.bold.makeCentered(),
                      )
                    ],
                  ),
                  10.heightBox,
                  Row(
                    children: [
                      "Lifetime Jewale earned 2630 /-"
                          .text
                          .color(Colors.white)
                          .size(14)
                          .make(),
                      Icon(Icons.arrow_forward_ios_outlined,size: 14,color: Colors.white,)
                    ],
                  ),
                  30.heightBox,
                  Row(
                    children: [

                      Icon(Icons.hexagon,color: AppColors.primaryColor,size: 35,),
                      10.widthBox,
                      Flexible(
                        child: 'Loved earning Jewels? Upgrade to Jupiter Pro to continue earning 21% Rewards'
                            .text.size(14)
                            .color(Colors.white)
                            .make(),
                      ),
                      // Spacer(),
                      "Know more".text.color(AppColors.primaryColor).size(18).bold.make()
                    ],
                  )
                ],
              ),
            ),

            20.heightBox,
            SizedBox(
              height: 90, // Set the fixed height for each item
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 80, // Set the fixed width for each item
                    margin: EdgeInsets.symmetric(horizontal:5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color:
                            Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 2,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              icons[index],
                              2.heightBox,
                              heading[index].text.color(Colors.white).overflow(TextOverflow.ellipsis).makeCentered(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            20.heightBox,
            // Container(
            //   width: double.infinity,
            //   height: 300,
            //   color: Colors.grey,
            //   child: Swiper(
            //     itemBuilder: (BuildContext context,int index){
            //       return Container(child: Image.asset(imagePaths[index]));
            //     },
            //     itemCount: 4,
            //     pagination: SwiperPagination(),
            //   ),
            // ),

            Container(
              height: 300,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      // color: Colors.grey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                        imagePaths[index],
                    ),
                  );
                },
                itemCount: 4,
                pagination: SwiperPagination(
                  builder: DotSwiperPaginationBuilder(
                    color: Colors.grey, // Change the dot color here
                    activeColor: AppColors.primaryColor, // Change the active dot color here
                    size: 6, // Change the dot size here
                    activeSize: 8, // Change the active dot size here
                    space: 6, // Change the space between dots here
                  ),
                  margin: EdgeInsets.only(bottom: 2.0),
                ),
                layout: SwiperLayout.DEFAULT,
              )

            ),
          ],
        ),
      ),
    );
  }
}