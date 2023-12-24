import 'package:beat_jerky/screens/feed_screen.dart';
import 'package:beat_jerky/screens/home_screen.dart';
import 'package:beat_jerky/screens/profile_screen.dart';
import 'package:beat_jerky/screens/reals_screen.dart';
import 'package:beat_jerky/screens/settings_screen.dart';
import 'package:beat_jerky/utils/color.dart';
import 'package:flutter/material.dart';

import 'music_style_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final List _pages = [
    const HomeScreen(),
    const MusicStyle(),
    const FeedScreen(),
    const PreloadPage(),
    const ProfileScreen(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: blackColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: indigoColor,
        unselectedItemColor: Colors.grey,
        onTap: (v){
          setState(() {
            _currentIndex = v;
          });
        },
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.music_note),label: "Music Style"),
        BottomNavigationBarItem(icon: Icon(Icons.feed),label: "Feed"),
        BottomNavigationBarItem(icon: Icon(Icons.play_circle),label: "Video"),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin),label: "Profile"),
      ],),
      body: _pages[_currentIndex],
    ),);
  }
}
