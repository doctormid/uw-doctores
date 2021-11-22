import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:doctor_mid/ui/screens/InicioScreens/inicio_first_screen.dart';
import 'package:doctor_mid/ui/screens/InicioScreens/inicio_second_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    InicioFirstScreen(),
    InicioSecondScreen(),
    InicioFirstScreen(),
    InicioFirstScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ConstantColor.APP_COLOR,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        showSelectedLabels: true,
        elevation: 0.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.schedule,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
