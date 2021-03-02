import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:practise/moral/detailed_page1.dart';
import 'package:practise/constant/drawer.dart';
import 'package:practise/moral/moral.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:async';

/// START - - MORAL STORIES ///////

class MoralList extends StatefulWidget {
  @override
  _MoralListState createState() => _MoralListState();
}

class _MoralListState extends State<MoralList> {
  // ignore: missing_return
  Future<List<Welcome>> fetchitems(BuildContext context) async {
    final jsonsrting =
        await DefaultAssetBundle.of(context).loadString("assets/moral.json");

    return welcomeFromJson(jsonsrting);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          title: "Choose the Story".text.bold.black.make(),
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
        child: FutureBuilder(
          future: fetchitems(context),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  Welcome item = snapshot.data[index];
                  return Container(
                    color: Vx.blue100,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Card(
                        shadowColor: Vx.black,
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Card(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width * 1.1,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                    colors: [Vx.blue300, Vx.green300],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight)),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Opacity(
                                  opacity: 0.5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(
                                          DetailedPage1(snapshot.data[index]));
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(item.title,
                                            style: GoogleFonts.aBeeZee(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
      drawer: DrawerForScreen(),
    );
  }
}

/// END - MORAL STORIES /////

//// START - TENALI -RAM///

class TenaliList extends StatefulWidget {
  @override
  _TenaliListState createState() => _TenaliListState();
}

class _TenaliListState extends State<TenaliList> {
  Future<List<Welcome3>> fetchitems(BuildContext context) async {
    final jsonsrting =
        await DefaultAssetBundle.of(context).loadString("assets/tenali.json");

    return welcome3FromJson(jsonsrting);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          title: "Choose a Story".text.bold.black.make(),
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
        child: FutureBuilder(
          future: fetchitems(context),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  Welcome3 item = snapshot.data[index];
                  return Container(
                    color: Vx.blue100,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Card(
                        shadowColor: Vx.black,
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Card(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width * 1.1,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                    colors: [Vx.blue300, Vx.green300],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight)),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Opacity(
                                  opacity: 0.5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(
                                          DetailedPage4(snapshot.data[index]));
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(item.title,
                                            style: GoogleFonts.aBeeZee(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
      drawer: DrawerForScreen(),
    );
  }
}

/// END - TENALI - RAM /////
