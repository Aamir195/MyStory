import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practise/constant/drawer.dart';

import 'package:practise/moral/moral.dart';
import 'package:velocity_x/velocity_x.dart';

/// START - - MORAL STORIES /////

class DetailedPage1 extends StatelessWidget {
  final Welcome welcome;

  DetailedPage1(this.welcome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          title: Text(
            welcome.title,
          ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                welcome.story,
                style: GoogleFonts.aBeeZee(
                    fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                bottom: 14,
                top: 10,
                right: 15,
              ),
              child: Text(
                welcome.moral,
                style: GoogleFonts.radley(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    color: Vx.purple500),
              ),
            ),
          ],
        ),
      ),
      drawer: DrawerForScreen(),
    );
  }
}

/// END - MORAL STORIES /////

//// START - TENALI -RAM///

class DetailedPage4 extends StatelessWidget {
  final Welcome3 welcome;

  DetailedPage4(this.welcome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          title: Text(
            welcome.title,
          ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                welcome.story,
                style: GoogleFonts.aBeeZee(
                    fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                bottom: 14,
                top: 10,
                right: 15,
              ),
              child: Text(
                welcome.moral,
                style: GoogleFonts.radley(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    color: Vx.purple500),
              ),
            ),
          ],
        ),
      ),
      drawer: DrawerForScreen(),
    );
  }
}

/// END - TENALI - RAM
