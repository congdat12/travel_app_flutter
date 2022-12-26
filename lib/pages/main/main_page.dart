import 'package:flutter/material.dart';
import 'package:travelapp_flutter/pages/main/home/home_page.dart';
import 'package:travelapp_flutter/resources/app_colors.dart';

List<Widget> _widgetOptions = <Widget>[
  const HomePage(),
  const Text(
    'Index 1: Notification',
  ),
  const Text(
    'Index 2: Account',
  ),
];

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.h0xff,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.h009,
        onTap: _onItemTapped,
      ),
    );
  }
}
