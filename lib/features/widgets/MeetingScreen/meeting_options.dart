import 'package:flutter/material.dart';
import 'package:online_meeting/utils/constants/colors.dart';
import 'package:online_meeting/utils/helpers/helper_functions.dart';
import '../../../utils/constants/sizes.dart';

class MeetingOptions extends StatelessWidget {
  const MeetingOptions({
    super.key,
    required this.text,
    required this.isMute,
    required this.onChange,
  });

  final String text;
  final bool isMute;
  final Function(bool) onChange;

  @override
  Widget build(BuildContext context) {
    // --- Responsive ---
    final screenWidth = MediaQuery.of(context).size.width; // Get screen width
    final screenHeight = MediaQuery.of(context).size.height; // Get screen height

    // Adjust height dynamically based on screen size (you can modify the multiplier)
    final containerHeight = screenHeight * 0.1;

    // Responsive padding (reduce padding on smaller screens for better space usage)
    final padding = screenWidth > 600 ? KSizes.md : KSizes.sm; // More padding on larger screens

    return Container(
        color: KHelperFunctions.isDarkMode(context)
            ? KColors.secondaryBackgroundDk
            : KColors.secondaryBackgroundLt,
      width: double.infinity,  // Use the full width of the screen
      height: containerHeight,  // Adjust height responsively
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: Text(
              text,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Switch(
            value: isMute,
            onChanged: onChange,
          )
        ],
      ),
    );
  }
}
