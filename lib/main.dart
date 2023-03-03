import 'package:flutter/material.dart';
import 'package:ramdom_dice/const/colors.dart';
import 'package:ramdom_dice/screen/home_screen.dart';
import 'package:ramdom_dice/screen/root_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        // Set main screen background color to black.
        scaffoldBackgroundColor: backgroundColor,

        // Setting the slider Theme
        sliderTheme: SliderThemeData(
          thumbColor: primaryColor,                           // 노브 color
          activeTrackColor: primaryColor,                     // track color moved by 노브
          inactiveTrackColor: primaryColor.withOpacity(0.3),  // track color where 노브 has not yet moved
        ),

        // Setting the bottom bavigation bar
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: primaryColor,
          unselectedItemColor: secondaryColor,
          backgroundColor: backgroundColor,
        ),

      ),
      home: RootScreen(),
    ),
  );
}
