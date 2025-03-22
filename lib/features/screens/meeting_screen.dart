import 'dart:math';

import 'package:flutter/material.dart';
import 'package:online_meeting/resources/meet_methods.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/text_strings.dart';
import '../widgets/MeetingScreen/meeting_button.dart';

class MeetingScreen extends StatelessWidget {
  MeetingScreen({super.key});

  final JitsiMeetMethods _jitsiMeetMethod = JitsiMeetMethods();

  createNewMeeting() async {
    var random = Random();
    String roomName = (random.nextInt(100000000) + 1000000).toString();
    _jitsiMeetMethod.createMeeting(roomName: roomName,
        isAudioMuted: true,
        isVideoMuted: true,
    );
  }

  joinMeeting(BuildContext context) {
    Navigator.pushNamed(context, '/video-call');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // --- buttons --- //

            // --- New Meet --- //
            KIconButton(
              onPressed: () {
                JitsiMeetMethods().createMeeting(
                  roomName: "roomname",
                  isAudioMuted: true,
                  isVideoMuted: true,
                );
              },
              text: 'New Meeting',
              icon: Icons.videocam,
              iconColor: Colors.white,
              color: KColors.iconButtonOrange,
            ),

            // --- Join Meet --- //
            KIconButton(
              onPressed: () => joinMeeting(context),
              text: 'Join',
              icon: Icons.add_box_rounded,
              iconColor: Colors.white,
              color: KColors.iconButtonBlue,
            ),

            // --- Schedule --- //
            KIconButton(
              onPressed: () {},
              text: 'Schedule',
              icon: Icons.calendar_today,
              iconColor: Colors.white,
              color: KColors.iconButtonBlue,
            ),

            // --- Share Screen --- //
            KIconButton(
              onPressed: () {},
              text: 'Share Screen',
              icon: Icons.arrow_upward,
              iconColor: Colors.white,
              color: KColors.iconButtonBlue,
            ),
          ],
        ),
        Expanded(
          child: Center(
            child: Text(
              KTexts.homeText,
              style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge!
                  .apply(fontSizeDelta: 7),
            ),
          ),
        )
      ],
    );
  }
}
