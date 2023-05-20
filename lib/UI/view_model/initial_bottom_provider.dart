import 'package:flutter/material.dart';
import 'package:recipe/UI/view/screen/home_screen.dart';
import 'package:recipe/UI/view/screen/notification_screen.dart';
import 'package:recipe/UI/view/screen/profile_screen.dart';
import 'package:recipe/UI/view/screen/saved_recipe_screen.dart';

class InitialBottomProvider with ChangeNotifier {
  int _currentTab = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const SavedRecipeScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];
  Widget _currentScreen = const HomeScreen();

  Widget get currentScreen => _currentScreen;
  int get currentTab => _currentTab;

  void homeTab() {
    _currentScreen = screens[0];
    _currentTab = 0;
    notifyListeners();
  }

  void savedTab() {
    _currentScreen = screens[1];
    _currentTab = 1;
    notifyListeners();
  }

  void notificationTab() {
    _currentScreen = screens[2];
    _currentTab = 3;
    notifyListeners();
  }

  void profileTab() {
    _currentScreen = screens[3];
    _currentTab = 4;
    notifyListeners();
  }
}
