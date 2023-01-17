import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:udbtravel_app/Screens/dashboard_screen.dart';
import 'package:udbtravel_app/Screens/favorite_screen.dart';
import 'package:udbtravel_app/Screens/profile_screen.dart';
import 'package:udbtravel_app/Screens/schedule_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List pages = [
    const DashboardScreen(),
    const FavoriteScreen(),
    const ScheduleScreen(),
    const ProfileScreen(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        onTap: onTap,
        currentIndex: currentIndex,
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Icons.search),
            title: const Text("Discover"),
            selectedColor: const Color.fromARGB(255, 10, 84, 187),
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: const Icon(Icons.favorite_border),
            title: const Text("Favorite"),
            selectedColor: const Color.fromARGB(255, 10, 84, 187),
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const Icon(Icons.calendar_month_sharp),
            title: const Text("Schedule"),
            selectedColor: const Color.fromARGB(255, 10, 84, 187),
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: const Color.fromARGB(255, 10, 84, 187),
          ),
        ],
      ),
    );
  }
}
