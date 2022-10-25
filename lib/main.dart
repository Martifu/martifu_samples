import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:martifu_samples/pages/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      title: 'Golf Tracking',
      home: HomeScreen(),
    );
  }
}
