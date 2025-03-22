import 'package:flutter/material.dart';
import 'package:online_meeting/features/screens/history_meeting_screen.dart';
import '../../utils/theme/custom_themes/bottom_nav_bar_theme.dart';
import '../widgets/HomeScreen/custom_bottom_nav_bar.dart';
import 'meeting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  final List<Widget> pages = [
    MeetingScreen(),
    HistoryMeetingScreen(),
    Text('Contacts'),
    Text('Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Meet & Chat'),
      ),
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBarTheme(
        data: Theme.of(context).brightness == Brightness.dark
            ? KBottomNavBar.darkBottomNavBarTheme
            : KBottomNavBar.lightBottomNavBarTheme,
        child: BottomNavBar(
          currentIndex: _page,
          onPageChanged: onPageChanged,
        ),
      ),
    );
  }
}
