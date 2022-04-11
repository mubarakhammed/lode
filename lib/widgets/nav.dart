import 'package:flutter/material.dart';
import 'package:lode_app/common/theme.dart';
import 'package:lode_app/screens/cart.dart';
import 'package:lode_app/screens/home.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 1;
  List<Widget> _widgetOptions = <Widget>[
    Cart(),
    HomePage(),
    Text('Profile Screen'),
  ];

  void _onItemTap(int index) {
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
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              title: Text(
                'Home',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              title: Text(
                'Messages',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              title: Text(
                'Profile',
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: PRIMARY_COLOR),
    );
  }
}
