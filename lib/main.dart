import 'package:flutter/material.dart';
import 'package:taskapp1/constants/routes.dart';
import 'package:taskapp1/screens/home/home_page.dart';
import 'package:taskapp1/screens/home/home_screen.dart';
import 'package:taskapp1/screens/login/login_screen.dart';
import 'package:taskapp1/screens/signup/signup_screen.dart';
import 'package:taskapp1/screens/verifyemail/verify_email.dart';
import 'package:taskapp1/splashscreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      routes: {
        loginRoute: (context) => const LoginScreen(),
        signupRoute: (context) => const SignupScreen(),
        homeRoute: (context) => const HomeScreen(),
        verifyEmailRoute: (context) => const VerifyEmailScreen(),
        homePage: (context) => const HomePage(),
      },
    );
  }
}
