import 'package:flutter/material.dart';

import '../../../utils/constants/image_strings.dart';

class KWelcomeImage extends StatelessWidget {
  const KWelcomeImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      KImages.onBoarding1,
      width: MediaQuery.of(context).size.width * 0.8, // Adjust width as needed
    );
  }
}
