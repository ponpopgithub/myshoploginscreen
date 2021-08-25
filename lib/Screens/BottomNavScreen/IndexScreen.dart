import 'package:flutter/material.dart';
import 'package:myshop/Theme/app_theme.dart';

import 'ManuList.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soi 5 Marketplace'),
        iconTheme: IconThemeData(color: whiteColor),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.video_call),
          ),
        ],
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: googleColor,
        ),
        child: Drawer(
          child: ListView(
            children: [
              //menu item
              UserAccountsDrawerHeader(
                accountName: Text("Pongphop"),
                accountEmail: Text("pongpop159@hotmail.com"),
                currentAccountPicture: CircleAvatar(
                    //  backgroundColor: Image.network(),
                    ),
                decoration: BoxDecoration(
                  color: googleColor,
                ),
              ),
              MenuList(
                menuIcon: Icons.login,
                menuTitle: "Login",
                onTap: () {
                  Navigator.popAndPushNamed(context, "/login");
                },
              ),
              MenuList(
                menuIcon: Icons.settings,
                menuTitle: "Setting",
                onTap: () {
                  Navigator.popAndPushNamed(context, "/settings");
                },
              ),
              MenuList(
                menuIcon: Icons.exit_to_app,
                menuTitle: "Exit",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text("Index"),
      ),
    );
  }
}
