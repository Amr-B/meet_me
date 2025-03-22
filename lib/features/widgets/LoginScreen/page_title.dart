import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class KPageTitle extends StatelessWidget {
  const KPageTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Start or join a meeting',
      style: TextStyle(
        fontSize: KSizes.fontSizeXlg,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}