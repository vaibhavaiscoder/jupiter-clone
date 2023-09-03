part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const SPLASH = _Paths.SPLASH;
  static const INTRO = _Paths.INTRO;
  static const BIOMATRIC = _Paths.BIOMATRIC;

  static const HOME = _Paths.HOME;
  static const HOME_SCREEN = _Paths.HOME_SCREEN;
  static const PAYMENTS = _Paths.PAYMENTS;
  static const MONEY = _Paths.MONEY;
  static const REWARDS = _Paths.REWARDS;
  static const HELP = _Paths.HELP;

  static const PHONE = _Paths.PHONE;
  static const OTP = _Paths.OTP;
  static const AADHAR_KYC = _Paths.AADHAR_KYC;
  static const PAY_SELECT = _Paths.PAY_SELECT;
  static const VIDEO_PAGE = _Paths.VIDEO_PAGE;
}

abstract class _Paths {
  static const SPLASH = '/splash';
  static const BIOMATRIC = '/biomatric';
  static const INTRO = '/intro';

  static const HOME = '/home';
  static const HOME_SCREEN = '/home_screen';
  static const PAYMENTS = '/payments';
  static const MONEY = '/money';
  static const REWARDS = '/rewards';
  static const HELP = '/help';

  static const PHONE = '/phone';
  static const OTP = '/otp';
  static const AADHAR_KYC = '/aadhaar';
  static const PAY_SELECT = '/pay_select';
  static const VIDEO_PAGE = '/video_page';
}
