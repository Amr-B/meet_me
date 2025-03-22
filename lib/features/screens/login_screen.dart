import 'package:flutter/material.dart';
import 'package:online_meeting/resources/auth_methods.dart';
import 'package:online_meeting/utils/constants/sizes.dart';
import '../../utils/helpers/helper_functions.dart';

import '../widgets/HomeScreen/custom_button.dart';
import '../widgets/LoginScreen/page_title.dart';
import '../widgets/LoginScreen/social_login.dart';
import '../widgets/LoginScreen/welcome_image.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMethods = AuthMethods();

  @override
  Widget build(BuildContext context) {

    double screenWidth = KHelperFunctions.screenWidth();
    double screenHeight = KHelperFunctions.screenHeight();
    Orientation orientation = KHelperFunctions.screenOrientation();

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 140),
            child: Center( // Center the entire column
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // --- Page Title --- //
                  KPageTitle(),
                  SizedBox(height: KSizes.spaceBetweenSections),

                  // --- Welcome Image --- //
                  KWelcomeImage(),
                  SizedBox(height: KSizes.spaceBetweenSections),

                  // --- Login button --- //
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: KCustomButton(
                      text: 'Login',
                    ),
                  ),
                  SizedBox(height: KSizes.spaceBetweenSections),

                  // --- social login icons --- //
                  KSocialLogin(authMethods: _authMethods)
                ],
              ),
            ),
          ),
      ),
    );
  }
}