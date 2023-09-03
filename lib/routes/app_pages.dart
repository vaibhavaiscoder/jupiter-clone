import 'package:get/get.dart';
import 'package:jupiter/main.dart';
import 'package:jupiter/pages/auth/adhar_kyc_page.dart';
import 'package:jupiter/pages/auth/biomatric_page.dart';
import 'package:jupiter/pages/auth/otp_verify_page.dart';
import 'package:jupiter/pages/auth/phone_verify_page.dart';
import 'package:jupiter/pages/auth/video_home_page.dart';
import 'package:jupiter/pages/help_screen/help_screen.dart';
import 'package:jupiter/pages/home.dart';
import 'package:jupiter/pages/home_screen/components/pay_select_page.dart';
import 'package:jupiter/pages/home_screen/home_screen.dart';
import 'package:jupiter/pages/intro_screens/intro_page.dart';
import 'package:jupiter/pages/money_screen/money_screen.dart';
import 'package:jupiter/pages/payments_screen/payments_screen.dart';
import 'package:jupiter/pages/rewards_screen/rewards_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: _Paths.SPLASH, page: () => SplashScreen()),
    GetPage(name: _Paths.INTRO, page: () => IntroPage()),
    GetPage(name: _Paths.BIOMATRIC, page: () => BiomatricPage()),

    GetPage(name: _Paths.HOME,
        transition: Transition.fadeIn, page: () => Home()),
    GetPage(name: _Paths.HOME_SCREEN,
        transition: Transition.fadeIn, page: () => HomeScreen()),
    GetPage(name: _Paths.PAYMENTS,
        transition: Transition.fadeIn, page: () => PaymentsScreen()),
    GetPage(name: _Paths.MONEY,
        transition: Transition.fadeIn, page: () => MoneyScreen()),
    GetPage(name: _Paths.REWARDS,
        transition: Transition.fadeIn, page: () => RewardsScreen()),
    GetPage(name: _Paths.HELP,
        transition: Transition.fadeIn, page: () => HelpScreen()),

    GetPage(name: _Paths.PHONE, page: () => PhoneVerificationPage()),
    GetPage(name: _Paths.OTP, page: () => OtpVerificationPage()),
    GetPage(name: _Paths.AADHAR_KYC, page: () => AdharKycScreen()),
    GetPage(name: _Paths.VIDEO_PAGE, page: () => VideoHomePage()),
    GetPage(name: _Paths.PAY_SELECT, page: () => PaySelectPage()),
    // GetPage(
    //   name: _Paths.HOME,
    //   page: () => NavigationHomeScreen(),
    //   transition: Transition.fadeIn,
    // ),
    // GetPage(
    //   name: _Paths.LOGIN,
    //   transition: Transition.fade,
    //   transitionDuration: const Duration(milliseconds: 500),
    //   page: () => LoginView(),
    // ),
    // GetPage(
    //   fullscreenDialog: true,
    //   name: _Paths.VEHICLE_DETAILS,
    //   page: () => VehicleDetails(),
    // ),
    ];
}
