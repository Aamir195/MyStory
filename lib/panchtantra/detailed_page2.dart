import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practise/constant/drawer.dart';
import 'package:practise/panchtantra/panchtantra.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailedPage2 extends StatefulWidget {
  final Welcome1 welcome;

  DetailedPage2(this.welcome);

  @override
  _DetailedPage2State createState() => _DetailedPage2State();
}

class _DetailedPage2State extends State<DetailedPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          title: Text(
            widget.welcome.title,
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
                widget.welcome.story,
                style: GoogleFonts.aBeeZee(
                    fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
      drawer: DrawerForScreen(),
    );
  }
}

///////***************************** */???????????????????????????
///
///   start of the Akbar -Birbal?????/////////////////////////
///

class DetailedPage3 extends StatefulWidget {
  final Welcome2 welcome;

  DetailedPage3(this.welcome);

  @override
  _DetailedPage3State createState() => _DetailedPage3State();
}

class _DetailedPage3State extends State<DetailedPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          title: Text(
            widget.welcome.title,
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
                widget.welcome.story,
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
                widget.welcome.moral,
                style: GoogleFonts.radley(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    color: Vx.purple500),
              ),
            )
          ],
        ),
      ),
      drawer: DrawerForScreen(),
    );
  }
}
