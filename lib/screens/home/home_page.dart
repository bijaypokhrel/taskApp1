import 'package:flutter/material.dart';
import '../../services/auth/auth_service.dart';
import '../login/login_screen.dart';
import '../verifyemail/verify_email.dart';
import 'home_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AuthService.firebase().initialize(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final user = AuthService.firebase().currentUser;
            if (user != null) {
              if (user.isEmailVerified) {
                return const HomeScreen();
              } else {
                return const VerifyEmailScreen();
              }
            } else {
              return const LoginScreen();
            }

          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}
