import 'package:flutter/material.dart';
import 'package:online_meeting/resources/auth_methods.dart';
import 'package:online_meeting/resources/meet_methods.dart';
import 'package:online_meeting/utils/constants/sizes.dart';

// --- widget imports --- //
import '../widgets/MeetingScreen/meeting_options.dart';
import '../widgets/videoCallScreen/join_button.dart';
import '../widgets/videoCallScreen/name_field.dart';
import '../widgets/videoCallScreen/room_id.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({super.key});

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  /// --- finals --- ///
  final AuthMethods _authMethods = AuthMethods();
  final JitsiMeetMethods _jitsiMeetMethods = JitsiMeetMethods();

  /// --- Controllers --- ///
  TextEditingController meetingIdController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  /// --- bools --- ///
  bool isAudioMuted = true;
  bool isVideoMuted = true;

  //--------//
  @override
  void initState() {
    meetingIdController = TextEditingController();
    nameController = TextEditingController(text: _authMethods.user.displayName);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    meetingIdController.dispose();
    nameController.dispose();
  }

  _joinMeeting() {
    _jitsiMeetMethods.createMeeting(
      roomName: meetingIdController.text,
      isAudioMuted: isAudioMuted,
      isVideoMuted: isVideoMuted,
      username: nameController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size; // Get screen size
    final isLandscape = size.width > size.height; // Check if in landscape mode

    // Adjust font size and padding based on screen size
    double padding = isLandscape ? 40 : 16; // More padding in landscape
    double fontSize = size.width > 600
        ? 20
        : 16; // Larger text on wider screens

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Join a Meeting',
          style: TextStyle(fontSize: fontSize),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: KSizes.spaceBetweenSections),

            /// --- Room ID --- ///
            KRoomId(meetingIdController: meetingIdController),
            SizedBox(height: KSizes.spaceBetweenSections),

            /// --- Name --- ///
            KNameField(nameController: nameController),
            SizedBox(height: KSizes.spaceBetweenSections),

            /// --- Join meeting button --- ///
            KJoinButton(
              onPressed: _joinMeeting,
            ),
            SizedBox(height: KSizes.spaceBetweenSections),

            /// --- Meeting Options --- ///
            MeetingOptions(
              text: "Mute Audio",
              isMute: isAudioMuted,
              onChange: onAudioMuted,
            ),
            MeetingOptions(
              text: "Turn off my video",
              isMute: isVideoMuted,
              onChange: onVideoMuted,
            ),
            SizedBox(height: KSizes.spaceBetweenSections),
          ],
        ),
      ),
    );
  }

  onAudioMuted(bool value) {
    setState(() {
      isAudioMuted = value;
    });
  }

  onVideoMuted(bool value) {
    setState(() {
      isVideoMuted = value;
    });
  }
}
