import 'package:fazmatricula/pages/cadastroADM.dart';
import 'package:fazmatricula/pages/homeAdmin.dart';
import 'package:fazmatricula/pages/homePage.dart';
import 'package:fazmatricula/pages/listarUsuarios.dart';
import 'package:fazmatricula/pages/loginPage.dart';
import 'package:fazmatricula/pages/splashScreen.dart';
import 'package:fazmatricula/pages/postarCurso.dart';
import 'package:fazmatricula/pages/tokenPage.dart';

import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'balta.io',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green[900]),
      home: splashScreen(),
      routes: <String, WidgetBuilder>{
        '/homePage': (BuildContext context) => new HomePage(),
        '/homeAdmin': (BuildContext context) => new HomeAdmin(),
        '/loginPage': (BuildContext context) => new LoginPage(),
        '/pages/listarUsuarios': (BuildContext context) => new ListarUser(),
        '/pages/cadastroADM': (BuildContext context) => new cadastroAdmin(),
        '/pages/postarCurso': (BuildContext context) => new postarCurso(),
      },
    );
  }
}
