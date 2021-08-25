import 'package:flutter/material.dart';
import 'package:myshop/Screens/BottomNavScreen/ContactScreen.dart';
import 'package:myshop/Screens/BottomNavScreen/IndexScreen.dart';
import 'package:myshop/Screens/BottomNavScreen/ProductScreen.dart';
import 'package:myshop/Screens/BottomNavScreen/PromotionScreen.dart';
import 'package:myshop/Theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> pages = [
    IndexScreen(),
    ProductScreen(),
    PromotionScreen(),
    ContactScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: pages[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: secondaryColor,
              ),
              child: Icon(
                Icons.home,
                size: 30,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Products",
            icon: Icon(Icons.local_restaurant),
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: secondaryColor,
              ),
              child: Icon(
                Icons.local_restaurant,
                size: 30,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Promotions",
            icon: Icon(Icons.star),
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: secondaryColor,
              ),
              child: Icon(
                Icons.star,
                size: 30,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Contact",
            icon: Icon(Icons.contact_mail),
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: secondaryColor,
              ),
              child: Icon(
                Icons.contact_mail,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
