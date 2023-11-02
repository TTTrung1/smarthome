import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_screen1.dart';
import 'home_screen2.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int initialIndex = 0;

  _selectedNavBar(int index){
    setState(() {
      initialIndex = index;
    });
  }

  final List _screens = const[ HomeScreen1(),HomeScreen2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: _screens[initialIndex], bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black45,
          onTap: _selectedNavBar,
          currentIndex: initialIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house), label: ''),
            const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: ''),
            BottomNavigationBarItem(
                icon: Image.asset('assets/grid.png'), label: ''),
            BottomNavigationBarItem(
                icon: Image.asset('assets/user.png'), label: ''),
          ],
          selectedItemColor: const Color.fromRGBO(255, 178, 103, 1),
          unselectedItemColor: const Color.fromRGBO(255, 255, 255, 1)),
    );
  }
}

