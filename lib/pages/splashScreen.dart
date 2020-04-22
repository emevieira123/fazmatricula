import 'package:fazmatricula/pages/loginPage.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class splashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(
      seconds: 3),
          () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),
      ),
      );
    },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: Image.asset("assets/logo2.png"),
        ),
      ),
    );
  }
}

