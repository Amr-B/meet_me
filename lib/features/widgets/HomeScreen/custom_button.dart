import 'package:flutter/material.dart';

import '../../../resources/auth_methods.dart';

class KCustomButton extends StatelessWidget {
  const KCustomButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final AuthMethods _authMethods = AuthMethods();
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () async{
          bool res = await _authMethods.signInWithGoogle(context);
          if (res) {
            Navigator.pushNamed(context, '/home');
          }
        },
        child: Text(text),
      ),
    );
  }
}
