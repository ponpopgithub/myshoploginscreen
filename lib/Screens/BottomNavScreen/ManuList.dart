import 'package:flutter/material.dart';
import 'package:myshop/Theme/app_theme.dart';

class MenuList extends StatelessWidget {
  final IconData menuIcon;
  final String menuTitle;
  final VoidCallback onTap;
  const MenuList({
    Key? key,
    required this.menuIcon,
    required this.menuTitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //hoverColor: ,
      leading: Icon(
        this.menuIcon,
        color: whiteColor,
      ),
      title: Text(
        this.menuTitle,
        style: TextStyle(color: whiteColor),
      ),
      onTap: () {
        this.onTap();
      },
    );
  }
}
