import 'package:flutter/material.dart';
import 'package:speedy_book/view/movie_homepage.dart';
import 'package:speedy_book/view/login.dart';
import 'package:speedy_book/view/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // color: Colors.white,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: const MaterialColor(0xFFFFFFFF, {
          50: Color(0xFFFFFFFF),
          100: Color(0xFFFFFFFF),
          200: Color(0xFFFFFFFF),
          300: Color(0xFFFFFFFF),
          400: Color(0xFFFFFFFF),
          500: Color(0xFFFFFFFF),
          600: Color(0xFFFFFFFF),
          700: Color(0xFFFFFFFF),
          800: Color(0xFFFFFFFF),
          900: Color(0xFFFFFFFF),
        }),
      ),

      home: const LoginPage(),
      //home: const MovieShowtimesPage(),
      //home: const MoviesHomePage(),

      routes: {
        '/loginpage': (_) => const LoginPage(),
        '/signup': (_) => const SignupPage(),
        '/homepage': (_) => MoviesHomePage(),
      },
    );
  }
}
