import 'package:fazmatricula/pages/homeAdmin.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class cadastroAdmin extends StatefulWidget {
  _cadastroAdminState createState() => _cadastroAdminState();
}

class _cadastroAdminState extends State<cadastroAdmin> {
  TextEditingController controllerUsername = new TextEditingController();
  TextEditingController controllerPassword = new TextEditingController();
  TextEditingController controllerNivel = new TextEditingController();
  TextEditingController controllerNome = new TextEditingController();
  TextEditingController controllerSobrenome = new TextEditingController();

  var _formkey = GlobalKey<FormState>();

  void addData() {
    var url = "http://fazmatricula-com.umbler.net/cadastroADM.php";

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
        title: Text("ADM Cadastro de Usuários"),
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
              Container(
                width: MediaQuery.of(context).size.width / 1,
                padding: EdgeInsets.only(
                    top: 4, left: 16, right: 16, bottom: 4
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: controllerNome,
                  validator: (value) {
                    if(value.isEmpty) return "Cadastre um nome";
                  },
                  cursorColor: Colors.green[900],
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.green[900], fontSize: 20.0),
                  decoration: InputDecoration(
                    hintText: "Nome",
                    //labelText: "Nome",
                    labelStyle: TextStyle(color: Colors.green[900],
                      fontSize: 28.0,
                    ),
                  ),
                ),
              ),
              Divider(),
              Container(
                width: MediaQuery.of(context).size.width / 1,
                padding: EdgeInsets.only(
                    top: 4, left: 16, right: 16, bottom: 4
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: controllerSobrenome,
                  validator: (value) {
                    if(value.isEmpty) return "Cadastre um sobrenome";
                  },
                  cursorColor: Colors.green[900],
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: new TextStyle(color: Colors.green[900], fontSize: 20.0),
                  decoration: InputDecoration(
                    hintText: "Sobrenome",
                    //labelText: "Sobrenome",
                    labelStyle: TextStyle(color: Colors.green[900],
                      fontSize: 28.0,
                    ),
                  ),
                ),
              ),
              Divider(),
              Container(
                width: MediaQuery.of(context).size.width / 1,
                padding: EdgeInsets.only(
                    top: 4, left: 16, right: 16, bottom: 4
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: controllerUsername,
                  validator: (value) {
                    if(value.isEmpty) return "Cadastre um usuario";
                  },
                  cursorColor: Colors.green[900],
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.green[900], fontSize: 20.0),
                  decoration: InputDecoration(
                    hintText: "E-mail",
                    //labelText: "E-mail",
                    labelStyle: TextStyle(color: Colors.green[900],
                      fontSize: 28.0,
                    ),
                  ),
                ),
              ),
              Divider(),
              Container(
                width: MediaQuery.of(context).size.width / 1,
                padding: EdgeInsets.only(
                    top: 4, left: 16, right: 16, bottom: 4
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: controllerPassword,
                  validator: (value) {
                    if(value.isEmpty) return "Cadastre uma senha";
                  },
                  cursorColor: Colors.green[900],
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.green[900], fontSize: 20.0),
                  decoration: InputDecoration(
                    hintText: "Senha",
                    //labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.green[900],
                      fontSize: 28.0,
                    ),
                  ),
                ),
              ),
              Divider(),
              Container(
                width: MediaQuery.of(context).size.width / 1,
                padding: EdgeInsets.only(
                    top: 4, left: 16, right: 16, bottom: 4
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: controllerNivel,
                  validator: (value) {
                    if(value.isEmpty) return "Cadastre uma nivel";
                  },
                  cursorColor: Colors.green[900],
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.green[900], fontSize: 20.0),
                  decoration: InputDecoration(
                    hintText: "Nivel: admin ou membro?",
                    //labelText: "Nivel",
                    labelStyle: TextStyle(color: Colors.green[900],
                      fontSize: 28.0,
                    ),
                  ),
                ),
              ),
              Divider(),
              ButtonTheme(
                height: 40.0,
                child: RaisedButton(
                  onPressed: (){
                    if (_formkey.currentState.validate()) {
                      addData();
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return HomeAdmin();
                      },
                      ),);
                    }
                  },
                  child: Center(
                    child: Text(
                      "Cadastrar",
                      style: TextStyle(color: Colors.white, fontSize: 28.0),
                    ),
                  ),
                  color: Colors.green[900],
                  padding: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
