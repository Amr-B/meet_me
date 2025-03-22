import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onPageChanged;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onPageChanged,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.video_chat),
          label: 'Meet & Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.lock_clock),
          label: 'Meetings',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Contacts',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }
}
