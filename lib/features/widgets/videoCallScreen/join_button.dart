import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class KJoinButton extends StatelessWidget {
  const KJoinButton({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: KSizes.md), // Add horizontal padding
      child: ElevatedButton(
        onPressed: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: KSizes.xl),
          alignment: Alignment.center,
          width: double.infinity,
          child: Text('Join'),
        ),
      ),
    );
  }
}