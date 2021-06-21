import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            DrawerListTile(
              titleText: "Dashboard",
              iconName: "menu_dashboard",
              onPress: () {},
            ),
            DrawerListTile(
              titleText: "Transactions",
              iconName: "menu_tran",
              onPress: () {},
            ),
            DrawerListTile(
              titleText: "Tasks",
              iconName: "menu_task",
              onPress: () {},
            ),
            DrawerListTile(
              titleText: "Documents",
              iconName: "menu_doc",
              onPress: () {},
            ),
            DrawerListTile(
              titleText: "Store",
              iconName: "menu_store",
              onPress: () {},
            ),
            DrawerListTile(
              titleText: "Notifications",
              iconName: "menu_notification",
              onPress: () {},
            ),
            DrawerListTile(
              titleText: "Profile",
              iconName: "menu_profile",
              onPress: () {},
            ),
            DrawerListTile(
              titleText: "Settings",
              iconName: "menu_setting",
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String titleText;
  final String iconName;
  final VoidCallback onPress;

  const DrawerListTile({
    Key? key,
    required this.titleText,
    required this.iconName,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        HapticFeedback.mediumImpact();
        onPress();
      },
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        "assets/icons/$iconName.svg",
        color: Colors.white54,
        height: 16.0,
      ),
      title: Text(
        titleText,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
