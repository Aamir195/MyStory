import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class DrawerForScreen extends StatefulWidget {
  @override
  _DrawerForScreenState createState() => _DrawerForScreenState();
}

class _DrawerForScreenState extends State<DrawerForScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topRight,
              colors: [Vx.purple300, Vx.yellow400]),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/tree.png",
                      height: mediaQuery.size.height * .12,
                    ),
                    "My Story".text.bold.size(15).make(),
                  ],
                ),
              ),
              
              ListTile(
                title: "Dark Mode".text.size(18).make(),
                trailing: Switch(
                  value: false,
                  onChanged: (val) {
                    Get.changeThemeMode(
                        Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
                  },
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
