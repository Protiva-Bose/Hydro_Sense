import 'package:flutter/material.dart';
import 'package:hydro/home.dart'; // Ensure that the 'home.dart' file is correctly imported

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState(); // Corrected 'iniState' to 'initState'
    _navigateToHome(); // Also, ensure you call the right method here
  }

  // Method to navigate to the home screen after a delay
  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {}); // Corrected to milliseconds
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/img_37.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
