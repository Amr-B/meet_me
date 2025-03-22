import 'package:flutter/material.dart';

import '../../constants/colors.dart';

/// Light & Dark Bottom Navigation Bar Themes
class KBottomNavBar {
  KBottomNavBar._(); // To avoid creating instances

  // --- Light mode --- //
  static final lightBottomNavBarTheme = BottomNavigationBarThemeData(
    backgroundColor: KColors.bottomNavBgColorLt,
    selectedItemColor: KColors.usedIconColorLt ,
    unselectedItemColor: KColors.unUsedIconColorLt ,
    elevation: 3,
    type: BottomNavigationBarType.fixed, // Keeps labels always visible
    selectedLabelStyle: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    unselectedLabelStyle: TextStyle(
      fontWeight: FontWeight.normal,
    ),
  );

  // --- Dark mode --- //
  static final darkBottomNavBarTheme = BottomNavigationBarThemeData(
    backgroundColor: KColors.bottomNavBgColorDk,
    selectedItemColor: KColors.usedIconColorDK,
    unselectedItemColor: KColors.unUsedIconColorDK,
    elevation: 2,
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  );
}
