import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';


class KNameField extends StatelessWidget {
  const KNameField({
    super.key,
    required this.nameController,
  });

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: KSizes.md),
      child: TextField(
        controller: nameController,
        maxLines: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'User Name',
        ),
      ),
    );
  }
}