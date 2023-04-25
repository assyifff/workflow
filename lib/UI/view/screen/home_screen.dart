import 'package:flutter/material.dart';
import 'package:recipe/UI/view/style/color_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ColorStyle colorStyle = ColorStyle();
  bool isSaladPressed = false;
  bool isBreakfastPressed = false;
  bool isAppetizerPressed = false;
  bool isNoodlePressed = false;
  bool isLunchPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 22,
              ),
              child: Text(
                'Find best recipes\nfor cooking',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 28,
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                  hintText: 'Search recipes',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Trending now 🔥',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      InkWell(
                        child: Row(
                          children: [
                            Text(
                              'See all',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: colorStyle.base,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              color: colorStyle.base,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Popular category',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isSaladPressed = !isSaladPressed;
                              isBreakfastPressed = false;
                              isAppetizerPressed = false;
                              isNoodlePressed = false;
                              isLunchPressed = false;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              isSaladPressed
                                  ? Colors.red
                                  : Colors.transparent.withOpacity(0),
                            ),
                            fixedSize: MaterialStateProperty.all(
                              const Size.fromHeight(34),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          child: Text(
                            'Salad',
                            style: TextStyle(
                              color: isSaladPressed ? Colors.white : Colors.red,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isBreakfastPressed = !isBreakfastPressed;
                              isSaladPressed = false;
                              isAppetizerPressed = false;
                              isNoodlePressed = false;
                              isLunchPressed = false;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              isBreakfastPressed
                                  ? Colors.red
                                  : Colors.transparent.withOpacity(0),
                            ),
                            fixedSize: MaterialStateProperty.all(
                              const Size.fromHeight(34),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          child: Text(
                            'Breakfast',
                            style: TextStyle(
                              color: isBreakfastPressed
                                  ? Colors.white
                                  : Colors.red,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isAppetizerPressed = !isAppetizerPressed;
                              isSaladPressed = false;
                              isBreakfastPressed = false;
                              isNoodlePressed = false;
                              isLunchPressed = false;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              isAppetizerPressed
                                  ? Colors.red
                                  : Colors.transparent.withOpacity(0),
                            ),
                            fixedSize: MaterialStateProperty.all(
                              const Size.fromHeight(34),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          child: Text(
                            'Appetizer',
                            style: TextStyle(
                              color: isAppetizerPressed
                                  ? Colors.white
                                  : Colors.red,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isNoodlePressed = !isNoodlePressed;
                              isSaladPressed = false;
                              isAppetizerPressed = false;
                              isBreakfastPressed = false;
                              isLunchPressed = false;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              isNoodlePressed
                                  ? Colors.red
                                  : Colors.transparent.withOpacity(0),
                            ),
                            fixedSize: MaterialStateProperty.all(
                              const Size.fromHeight(34),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          child: Text(
                            'Noodle',
                            style: TextStyle(
                              color:
                                  isNoodlePressed ? Colors.white : Colors.red,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isLunchPressed = !isLunchPressed;
                              isSaladPressed = false;
                              isAppetizerPressed = false;
                              isNoodlePressed = false;
                              isBreakfastPressed = false;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              isLunchPressed
                                  ? Colors.red
                                  : Colors.transparent.withOpacity(0),
                            ),
                            fixedSize: MaterialStateProperty.all(
                              const Size.fromHeight(34),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          child: Text(
                            'Lunch',
                            style: TextStyle(
                              color: isLunchPressed ? Colors.white : Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Your recipe',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      InkWell(
                        child: Row(
                          children: [
                            Text(
                              'See all',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: colorStyle.base,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              color: colorStyle.base,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
