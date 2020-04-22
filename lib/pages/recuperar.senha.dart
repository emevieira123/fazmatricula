import 'package:flutter/material.dart';

class recuperarSenha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recuperar Senha"),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 50,
          left: 30,
          right: 30,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset("assets/logo2.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            TextFormField(
              cursorColor: Colors.green[900],
              autofocus: true,
              keyboardType: TextInputType.number,
              style: new TextStyle(color: Colors.green[900], fontSize: 24.0),
              decoration: InputDecoration(
                labelText: "CPF",
                labelStyle: TextStyle(color: Colors.green[900],
                  fontSize: 30.0,
                ),
              ),
            ),
            Divider(),
            TextFormField(
              cursorColor: Colors.green[900],
              autofocus: true,
              keyboardType: TextInputType.text,
              style: new TextStyle(color: Colors.green[900], fontSize: 24.0),
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(color: Colors.green[900],
                  fontSize: 30.0,
                ),
              ),
            ),
            Divider(),
            ButtonTheme(
              height: 60.0,
              child: RaisedButton(
                onPressed: () => {},
                child: Text(
                  "Enviar",
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
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

