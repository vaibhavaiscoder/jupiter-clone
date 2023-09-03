import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jupiter/consts/colors.dart';
import 'package:jupiter/pages/auth/auth_controller.dart';
import 'package:jupiter/routes/app_pages.dart';
import 'package:jupiter/widgets/custom_button.dart';

class BiomatricPage extends StatefulWidget {
  const BiomatricPage({super.key});

  @override
  State<BiomatricPage> createState() => _BiomatricPageState();
}

class _BiomatricPageState extends State<BiomatricPage> {

  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(right: 16,left: 16),
        height: 60,
        child: CustomButton(
          backgroundColor: AppColors.primaryColor,
          text: 'Unlock with Biometrics',
          onPress: () async {
            // Call the authentication method from AuthController
            bool isAuthenticated = await authController.authenticate();

            if (isAuthenticated) {
              Get.toNamed(Routes.HOME);
            } else {
              // Authentication failed, handle accordingly
            }
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 120, // Adjust the width as needed
                height: 120, // Adjust the height as needed
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0x07250CFF), // Change the color or add an image here
                ),
                child: Image.asset('assets/png/biomatric.png')
              ),
              SizedBox(height: 16),
              Text(
                'Access your account securely',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'To protect your data, you can only access the app when it\'s unlocked.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
