import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class KRoomId extends StatelessWidget {
  const KRoomId({
    super.key,
    required this.meetingIdController,
  });

  final TextEditingController meetingIdController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: KSizes.md),
      child: TextField(
        controller: meetingIdController,
        maxLines: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Room ID',
        ),
      ),
    );
  }
}