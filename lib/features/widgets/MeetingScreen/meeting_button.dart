import 'package:flutter/material.dart';
import 'package:online_meeting/utils/constants/sizes.dart';
import 'package:online_meeting/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class KIconButton extends StatelessWidget {
  const KIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.color,
    required this.iconColor, required this.text,
  });

  final VoidCallback onPressed;
  final IconData icon;
  final Color color, iconColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final size = MediaQuery.of(context).size;
    final squareSize = size.shortestSide * 0.17;

    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(0, 4),
                )
              ],
            ),
            width: squareSize,
            height: squareSize,
            child: Icon(
              icon,
              size: KSizes.iconLg,
              color: iconColor,
            ),
          ),
          SizedBox(height: KSizes.spaceBetween),
          Text(
            text,
          )
        ],
      ),
    );
  }
}
