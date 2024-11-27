import 'package:flutter/material.dart';
import 'package:penaura/features/create/create_page.dart';
import 'package:penaura/features/discover/discover_page.dart';
import 'package:penaura/features/myarticles/myarticle_page.dart';
import 'package:penaura/features/profile/profile_page.dart';

import 'home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int itemSelctedIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const DiscoverPage(),
    const CreatePage(),
    const MyarticlePage(),
    const ProfilePage()
  ];

  void onItemSelected(int index) {
    setState(() {
      itemSelctedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[itemSelctedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: itemSelctedIndex,
          onTap: onItemSelected,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Colors.grey,
          items: [
            barItem('Home', Icons.home_filled),
            barItem('Discover', Icons.explore),
            barItem('Create', Icons.add_circle),
            barItem('My Article', Icons.article),
            barItem('Profile', Icons.person),
          ]),
    );
  }

  BottomNavigationBarItem barItem(String name, IconData icon) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: name,
    );
  }
}
