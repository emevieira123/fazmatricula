import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class cadastroUsuario extends StatefulWidget {
  _cadastroUsuarioState createState() => _cadastroUsuarioState();
}

class _cadastroUsuarioState extends State<cadastroUsuario> {
  TextEditingController controllerUsername = new TextEditingController();
  TextEditingController controllerPassword = new TextEditingController();
  TextEditingController controllerNivel = new TextEditingController();
  TextEditingController controllerNome = new TextEditingController();
  TextEditingController controllerSobrenome = new TextEditingController();

  var _formkey = GlobalKey<FormState>();

  void addData() {
    var url = "http://fazmatricula-com.umbler.net/salva.php";

    http.post(url, body: {
      "nome": controllerNome.text,
      "sobrenome": controllerSobrenome.text,
      "email": controllerUsername.text,
      "senha": controllerPassword.text,
      "nivel": controllerNivel.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cadastro de Usuários"),
      ),
      body: Form(
        key: _formkey,
        child: Padding(
        padding: EdgeInsets.only(
          top: 30,
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
            TextFormField(
              controller: controllerNome,
              validator: (value) {
                if(value.isEmpty) return "Cadastre um nome";
              },
              cursorColor: Colors.green[900],
              autofocus: true,
              keyboardType: TextInputType.text,
              style: new TextStyle(color: Colors.green[900], fontSize: 24.0),
              decoration: InputDecoration(
                  hintText: "Ex: João",
                  labelText: "Nome",
                  labelStyle: TextStyle(color: Colors.green[900],
                    fontSize: 30.0,
                  ),
              ),
            ),
            Divider(),
            TextFormField(
              controller: controllerSobrenome,
              validator: (value) {
                if(value.isEmpty) return "Cadastre um sobrenome";
              },
              cursorColor: Colors.green[900],
              autofocus: true,
              style: new TextStyle(color: Colors.green[900], fontSize: 24.0),
              decoration: InputDecoration(
                  hintText: "Ex: Silva",
                  labelText: "Sobrenome",
                  labelStyle: TextStyle(color: Colors.green[900],
                    fontSize: 30.0,
                  ),
              ),
            ),
            Divider(),
            TextFormField(
              controller: controllerUsername,
              validator: (value) {
                if(value.isEmpty) return "Cadastre um usuario";
              },
              cursorColor: Colors.green[900],
              autofocus: true,
              keyboardType: TextInputType.text,
              style: new TextStyle(color: Colors.green[900], fontSize: 24.0),
              decoration: InputDecoration(
                  hintText: "exemplo@exemplo.com",
                  labelText: "E-mail",
                  labelStyle: TextStyle(color: Colors.green[900],
                    fontSize: 30.0,
                  ),
              ),
            ),
            Divider(),
            TextFormField(
              controller: controllerPassword,
              validator: (value) {
                if(value.isEmpty) return "Cadastre uma senha";
              },
              cursorColor: Colors.green[900],
              autofocus: true,
              obscureText: true,
              keyboardType: TextInputType.text,
              style: new TextStyle(color: Colors.green[900], fontSize: 24.0),
              decoration: InputDecoration(
                  hintText: "*******",
                  labelText: "Senha",
                  labelStyle: TextStyle(color: Colors.green[900],
                    fontSize: 30.0,
                  ),
              ),
            ),
            Divider(),

            Divider(),
            ButtonTheme(
              height: 60.0,
              child: RaisedButton(
                onPressed: (){
                  if (_formkey.currentState.validate()) {
                    addData();
                    Navigator.pop(context);
                  }
                },
                child: Text(
                  "Cadastrar",
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
                color: Colors.green[900],
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
