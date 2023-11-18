import 'package:fitness_app/workout_details.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home:  HomePage(),

      routes: {
        'home': (context) => HomePage(),
        'login': (context) => WorkoutDetails(),
      },

    );
  }
}









