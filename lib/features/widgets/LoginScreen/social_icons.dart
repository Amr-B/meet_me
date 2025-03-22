import 'package:flutter/material.dart';
import '../../../../utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
    required this.onPressed,
    required this.image,
  });

  final VoidCallback? onPressed;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // --- google login button --- //
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: Image(
              width: KSizes.iconMd,
              height: KSizes.iconMd,
              image: AssetImage(image),
            ),
          ),
        ),
        const SizedBox(width: KSizes.spaceBetween * 2),
      ],
    );
  }
}
