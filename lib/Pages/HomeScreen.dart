import 'package:flutter/material.dart';
import '../constans.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgats/home/HomeBody.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: HomeScreenBar(),
      body: HomeBody(),
    );
  }

  AppBar HomeScreenBar() {
    return AppBar(
      elevation: 0,
      title: Text(
        "متجر الاكتروني",
        style: GoogleFonts.getFont("Almarai"),
      ),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
    );
  }
}
