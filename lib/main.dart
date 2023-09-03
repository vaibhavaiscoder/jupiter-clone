import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jupiter/consts/colors.dart';
import 'package:jupiter/pages/auth/auth_controller.dart';
import 'package:jupiter/routes/app_pages.dart';
import 'package:local_auth/local_auth.dart';

void main() async{
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    final isLogin = box.read('isLogin') ?? false;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.SPLASH,
      getPages: AppPages.routes,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final AuthController authController = Get.put(AuthController());

  String _authorized = 'Not Authorized';
  bool _isAuthenticating = false;

  @override
  void initState() {
    super.initState();

    // Check if the user is already logged in
    final box = GetStorage();
    final isLogin = box.read('isLogin') ?? false;

    // If the user is logged in, show authentication
    if (isLogin) {
      _authenticate();
    } else {
      // If not logged in, navigate to the intro screen
      Timer(Duration(seconds: 3), () {
        Get.offAllNamed(Routes.INTRO);
      });
    }
  }

  Future<void> _authenticate() async {
    setState(() {
      _isAuthenticating = true;
      _authorized = 'Authenticating';
    });

    bool authenticated = await authController.authenticate();

    setState(() {
      _isAuthenticating = false;
    });

    if (authenticated) {
      // Authentication successful, navigate to the home screen
      Get.offAllNamed(Routes.HOME);
    } else {
      // Authentication failed, handle accordingly (e.g., show an error message)
      // For example, you can navigate to the intro screen if authentication fails
      Get.offAllNamed(Routes.BIOMATRIC);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor, // Set the background color to orange
      body: Center(
        child: Text(
          'Jupiter',
          style: TextStyle(
            fontSize: 48, // Adjust the font size as needed
            fontWeight: FontWeight.bold,
            color: Colors.white, // Text color
          ),
        ),
      ),
    );
  }
}