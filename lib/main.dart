import 'package:ewallet/ui/pages/onboarding_page.dart';
import 'package:ewallet/ui/pages/sign_in_page.dart';
import 'package:ewallet/ui/pages/sign_up_page.dart';
import 'package:ewallet/ui/pages/sign_up_set_id_card_page.dart';
import 'package:ewallet/ui/pages/sign_up_set_profile_page.dart';
import 'package:ewallet/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnBoardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-set-profile': (context) => const SignUpSetProfilePage(),
        '/sign-up-set-id-card': (context) => const SignUpSetIdCardPage(),
      },
    );
  }
}