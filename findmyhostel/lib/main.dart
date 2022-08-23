import 'package:findmyhostel/screens/detail_page.dart';
import 'package:findmyhostel/screens/home.dart';
import 'package:findmyhostel/screens/login.dart';
import 'package:findmyhostel/screens/payment.dart';
import 'package:findmyhostel/screens/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FindMyHostel());
}

class FindMyHostel extends StatelessWidget {
  const FindMyHostel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/home': (context) => const HomeScreen(),
        '/detail_page': (context) => const DetailPage(),
        '/payment': (context) => const PaymentPage(),
      },
    );
  }
}
