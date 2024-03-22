import 'package:flutter/material.dart';
import 'package:learn202/core/view_controller/navigator_view.dart';

import 'package:learn202/view/Theme/theme.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  //şimdilik böyle ama burayı mobx ile yapacaksın
  int _selectIndex = 0;

  void _voidSelected(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NavigatorManager.pages(_selectIndex),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: AppTheme.navIconSize,
          selectedLabelStyle: AppTheme.navText,
          selectedItemColor: AppTheme.navIconColor,
          backgroundColor: AppTheme.navBackgroundColor,
          currentIndex: _selectIndex,
          onTap: _voidSelected,
          items: <BottomNavigationBarItem>[HomeBar(), newsBar(), profileBar()],
        ));
  }

  BottomNavigationBarItem profileBar() {
    return const BottomNavigationBarItem(
      icon: Icon(
        Icons.supervised_user_circle,
        color: AppTheme.navIconColor,
      ),
      label: 'Profile',
    );
  }

  BottomNavigationBarItem newsBar() {
    return const BottomNavigationBarItem(
      icon: Icon(Icons.book_online_rounded, color: AppTheme.navIconColor),
      label: 'News',
    );
  }

  BottomNavigationBarItem HomeBar() {
    return const BottomNavigationBarItem(
        icon: Icon(Icons.home, color: AppTheme.navIconColor), label: 'Home');
  }
}
