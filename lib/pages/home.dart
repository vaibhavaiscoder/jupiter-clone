import 'package:flutter/material.dart';
import 'package:jupiter/consts/colors.dart';
import 'package:jupiter/pages/help_screen/help_screen.dart';
import 'package:jupiter/pages/home_screen/home_screen.dart';
import 'package:jupiter/pages/money_screen/money_screen.dart';
import 'package:jupiter/pages/payments_screen/payments_screen.dart';
import 'package:jupiter/pages/rewards_screen/rewards_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;

  final pages = [
    const HomeScreen(),
    const PaymentsScreen(),
    const MoneyScreen(),
    const RewardsScreen(),
    HelpScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  BottomNavigationBar buildMyNavBar(BuildContext context) {

    return BottomNavigationBar(
      // backgroundColor: const Color(0xffC4DFCB),
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: Colors.black,
      currentIndex: pageIndex,
      onTap: (int index) {
        setState(() {
          pageIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: (pageIndex == 0)? Icon(Icons.circle_rounded,color: AppColors.primaryColor,) : Icon(Icons.circle_outlined,color: Colors.grey,),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: (pageIndex == 1)? Icon(Icons.compare_arrows,color: AppColors.primaryColor,) : Icon(Icons.compare_arrows,color: Colors.grey,),
          label: 'Payments',
        ),
        BottomNavigationBarItem(
          icon: (pageIndex == 2)? Icon(Icons.rocket,color: AppColors.primaryColor,) : Icon(Icons.rocket_outlined,color: Colors.grey,),

          label: 'Money',
        ),
        BottomNavigationBarItem(
          icon: (pageIndex == 3)? Icon(Icons.local_offer,color: AppColors.primaryColor,) : Icon(Icons.local_offer_outlined,color: Colors.grey,),
          label: 'Rewards',
        ),
        BottomNavigationBarItem(
          icon: (pageIndex == 4)? Icon(Icons.live_help_rounded,color: AppColors.primaryColor,) : Icon(Icons.live_help_outlined,color: Colors.grey,),
          label: 'Help',
        ),
      ],
    );
  }
}