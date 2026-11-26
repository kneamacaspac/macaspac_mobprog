import 'package:flutter/material.dart';
import 'package:macaspac_mobprog/constants.dart';

import 'package:macaspac_mobprog/screens/newsfeed_screen.dart';
import 'package:macaspac_mobprog/screens/notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final PageController _pageController = PageController();

  final List<String> _appBarTitles = ['Meowbook', 'Notifications', 'Profile'];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Enhancement 2: Dynamic AppBar
      appBar: AppBar(
        backgroundColor: fbLightPrimary,
        shadowColor: fbSecondary,
        elevation: 2,

        title: Text(
          _appBarTitles[_selectedIndex],
          style: TextStyle(
            color: fbPrimary,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: PageView(
        controller: _pageController,

        children: const <Widget>[
          NewsfeedScreen(),
          NotificationScreen(),
          Center(child: Text('Profile Screen', style: TextStyle(fontSize: 20))),
        ],

        // Updates the selected index when swiping pages
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,

        onTap: _onTappedBar,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],

        selectedItemColor: fbPrimary,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });

    _pageController.jumpToPage(value);
  }
}
