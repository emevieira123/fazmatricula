import 'package:fazmatricula/pages/documentos.necessarios.dart';
import 'package:fazmatricula/pages/graduacao.page.dart';
import 'tokenPage.dart';
import 'package:fazmatricula/pages/loginPage.dart';
import 'package:fazmatricula/pages/listarCursos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';

//Pages

import './perfil.page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home",
          style: TextStyle(fontSize: 24),
        ),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Lionel Messi'),
              accountEmail: new Text('lionel.messi@gmail.com'),
              currentAccountPicture:SizedBox(
                width: 170,
                height: 170,
                child: Image.asset("assets/messi2.png"),
              ),
            ),
            new ListTile(
              title: new Text('Perfil',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                prefix0.Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new perfilPage())
                );
              },
            ),
            Divider(color: Colors.black),
            new ListTile(
              title: new Text('Sair',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                prefix0.Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                },
                ),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset("assets/logo2.png"),
            ),
            SizedBox(
              height: 50,
            ),
            ButtonTheme(
              height: 58.0,
              child: RaisedButton(
                onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListarCursos();
                },
                ),
                ),
                },
                child: Text(
                  "Vestibular",
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
                color: Colors.green[900],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ButtonTheme(
              height: 58.0,
              child: RaisedButton(
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Token();
                  },
                  ),
                  ),
                },
                child: Text(
                  "Matricular-se",
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
                color: Colors.green[900],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ButtonTheme(
              height: 58.0,
              child: RaisedButton(
                onPressed: () => {},
                child: Text(
                  "Acompanhamento",
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
                color: Colors.green[900],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//-----------------------------------------------------
