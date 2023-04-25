import 'package:flutter/material.dart';
import 'package:recipe/UI/view/screen/add_recipe_screen.dart';
import 'package:recipe/UI/view/screen/home_screen.dart';
import 'package:recipe/UI/view/screen/notification_screen.dart';
import 'package:recipe/UI/view/screen/profile_screen.dart';
import 'package:recipe/UI/view/screen/saved_recipe_screen.dart';
import 'package:recipe/UI/view/widget/home_widget/circle_painter_widget.dart';

class BottomNavigationItemProvider with ChangeNotifier {
  int _currentTab = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const SavedRecipeScreen(),
    const AddRecipeScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];
  final List<BottomNavigationBarItem> _bottomNavBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: SizedBox(
        height: 60,
        width: 60,
        child: CustomPaint(
          painter: CirclePainter(),
          child: FloatingActionButton(
            onPressed: () {},
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: const Icon(
              Icons.add,
              size: 40,
            ),
          ),
        ),
      ),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: 'Favorites',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  int get currentTab => _currentTab;
  List<BottomNavigationBarItem> get bottonNavBarItems => _bottomNavBarItems;

  void updateSelectedIndex(int index) {
    _currentTab = index;
    notifyListeners();
  }
}
