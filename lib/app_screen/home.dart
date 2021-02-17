import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:dynamic_theme/dynamic_theme.dart';

enum FSBStatus {
  FSB_OPEN,
  FSB_CLOSE,
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            title: "My Story".text.bold.black.make(),
            elevation: 6.5,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Vx.yellow500, Vx.purple500])),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: " I am Ready with the group".text.make(),
        ),
        drawer: Drawer(
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
                      value: isSwitched,
                      onChanged: (val) {
                        toggleTheme();
                        setState(() {
                          isSwitched = val;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.mode_edit,
                      color: Vx.blue900,
                      size: 28,
                    ),
                    title: "Font Size".text.size(18).make(),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.star_rate,
                      color: Vx.blue900,
                      size: 28,
                    ),
                    title: "Rate".text.size(18).make(),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  void toggleTheme() {
    DynamicTheme.of(context).setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }
}
