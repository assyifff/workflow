import 'package:flutter/material.dart';
import 'package:recipe/UI/view/screen/add_recipe_screen.dart';
import 'package:recipe/UI/view/screen/home_screen.dart';
import 'package:recipe/UI/view/screen/notification_screen.dart';
import 'package:recipe/UI/view/screen/profile_screen.dart';
import 'package:recipe/UI/view/screen/saved_recipe_screen.dart';
import 'package:recipe/UI/view/style/color_style.dart';

class InitialBottomScreenWidget extends StatefulWidget {
  const InitialBottomScreenWidget({super.key});

  @override
  State<InitialBottomScreenWidget> createState() =>
      _InitialBottomScreenWidgetState();
}

class _InitialBottomScreenWidgetState extends State<InitialBottomScreenWidget> {
  final ColorStyle colorStyle = ColorStyle();
  int currentTab = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const SavedRecipeScreen(),
    const AddRecipeScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorStyle.base,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddRecipeScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 86,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const HomeScreen();
                        currentTab = 0;
                      });
                    },
                    shape: const CircleBorder(),
                    child: Icon(
                      (Icons.home),
                      color: currentTab == 0
                          ? colorStyle.base
                          : Colors.black.withOpacity(0.2),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const SavedRecipeScreen();
                        currentTab = 1;
                      });
                    },
                    shape: const CircleBorder(),
                    child: Icon(
                      (Icons.bookmark),
                      color: currentTab == 1
                          ? colorStyle.base
                          : Colors.black.withOpacity(0.2),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const NotificationScreen();
                        currentTab = 3;
                      });
                    },
                    shape: const CircleBorder(),
                    child: Icon(
                      (Icons.notifications),
                      color: currentTab == 3
                          ? colorStyle.base
                          : Colors.black.withOpacity(0.2),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const ProfileScreen();
                        currentTab = 4;
                      });
                    },
                    shape: const CircleBorder(),
                    child: Icon(
                      (Icons.person),
                      color: currentTab == 4
                          ? colorStyle.base
                          : Colors.black.withOpacity(0.2),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
