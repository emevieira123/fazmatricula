import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Token extends StatefulWidget {
  @override
  _TokenState createState() => _TokenState();
}

class _TokenState extends State<Token> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Token"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 8, right: 8, left: 8, bottom: 8),
                child: TextField(
                  cursorColor: Colors.green[900],
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.green[900], fontSize: 24.0),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    hintText: "Ex: 1XD45RZ6BN05",
                    labelText: "Token de Validação",
                    labelStyle: TextStyle(color: Colors.green[900],
                      fontSize: 24.0,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
              ),
            ),
            Divider(),
            ButtonTheme(
              height: 40.0,
              child: RaisedButton(
                onPressed: () => {},
                child: Text(
                  "Validar",
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
                color: Colors.green[900],
                padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
