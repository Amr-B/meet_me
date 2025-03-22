import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';
import 'package:online_meeting/resources/firestore_methods.dart';
import 'auth_methods.dart';

class JitsiMeetMethods {
  /// --- finals --- ///
  final AuthMethods _authMethods = AuthMethods();
  final JitsiMeet _jitsiMeetPlugin = JitsiMeet();
  final FirestoreMethods _firestoreMethods = FirestoreMethods();

  /// --- bools & lists --- ///
  bool audioMuted = true;
  bool videoMuted = true;
  List<String> participants = [];

  /// --- create new meeting --- ///
  void createMeeting({
    required String roomName,
    required bool isAudioMuted,
    required bool isVideoMuted,
    String username = '',
  }) async {
    try {
      await joinMeeting(
        roomName: roomName,
        displayName: _authMethods.user.displayName ?? "",
        email: _authMethods.user.email ?? "",
        avatarUrl: _authMethods.user.photoURL ?? "",
        audioMuted: isAudioMuted,
        videoMuted: isVideoMuted,
      );

      /// --- if statement for username --- ///
      String name;
      if (username.isEmpty){
      name = _authMethods.user.displayName!;
      } else {
        name = username;
      }

      _firestoreMethods.addToMeetingHistory(roomName);

      /// --- error message --- ///
    } catch (e) {
      print("Error creating meeting: $e");
    }
  }

  /// --- Join a meeting --- ///
  Future<void> joinMeeting({
    required String roomName,
    required String displayName,
    required String email,
    required String avatarUrl,
    required bool audioMuted, // Receive audioMuted
    required bool videoMuted, // Receive videoMuted
  }) async {
    try {
      var options = JitsiMeetConferenceOptions(
        room: roomName,
        configOverrides: {
          "startWithAudioMuted": audioMuted,
          "startWithVideoMuted": videoMuted,
        },
        userInfo: JitsiMeetUserInfo(
          displayName: displayName,
          email: email,
          avatar: avatarUrl,
        ),
      );

      var listener = JitsiMeetEventListener(
        conferenceJoined: (url) => print("conferenceJoined: url: $url"),
        conferenceTerminated: (url, error) =>
            print("conferenceTerminated: url: $url, error: $error"),
        conferenceWillJoin: (url) => print("conferenceWillJoin: url: $url"),
        participantJoined: (email, name, role, participantId) {
          participants.add(participantId!);
          print("participantJoined: participantId: $participantId");
        },
        participantLeft: (participantId) {
          participants.remove(participantId);
          print("participantLeft: participantId: $participantId");
        },
      );

      await _jitsiMeetPlugin.join(options, listener);
    } catch (error) {
      print("Error joining meeting: $error"); // More specific error message
    }
  }

// ... (rest of the class)
}