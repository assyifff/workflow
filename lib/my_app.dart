import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/UI/view/widget/other_widget/initial_bottom_screen_widget.dart';
import 'package:recipe/UI/view_model/bottom_navigation_item_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomNavigationItemProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const InitialBottomScreenWidget(),
        theme: ThemeData(
          fontFamily: 'Poppins',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    );
  }
}
