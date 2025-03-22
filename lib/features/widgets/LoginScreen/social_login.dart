import 'package:flutter/material.dart';
import 'package:online_meeting/features/widgets/LoginScreen/social_icons.dart';

import '../../../resources/auth_methods.dart';
import '../../../utils/constants/image_strings.dart';

class KSocialLogin extends StatelessWidget {
  const KSocialLogin({
    super.key,
    required AuthMethods authMethods,
  }) : _authMethods = authMethods;

  final AuthMethods _authMethods;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // --- google --- //
        SocialButtons(
          onPressed: () async{
            bool res = await _authMethods.signInWithGoogle(context);
            if (res) {
              Navigator.pushNamed(context, '/home');
            }
          },
          image: KImages.google,
        ),

        // --- google --- //
        SocialButtons(
          onPressed: () {},
          image: KImages.faceBook,
        )
      ],
    );
  }
}