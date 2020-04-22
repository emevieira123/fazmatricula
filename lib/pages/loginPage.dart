import 'dart:convert';

import 'package:fazmatricula/pages/cadastro.usuario.dart';
import 'package:fazmatricula/pages/homePage.dart';
import 'package:fazmatricula/pages/recuperar.senha.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String email;

//class LoginApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: 'Flutter + Mysql',
//      home: LoginPage(),
//
//    );
//  }
//}

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController controllerUser = new TextEditingController();
  TextEditingController controllerPass = new TextEditingController();

  String mensaje = '';

  Future<List> login() async {
    final response = await http.post("http://fazmatricula-com.umbler.net/login.php", body: {
      "email": controllerUser.text,
      "senha": controllerPass.text,
    });

    var datauser = json.decode(response.body);

    if (datauser.length == 0) {
      Navigator.pushReplacementNamed(context, '/loginPage');
      showDialog(
        context: context,
        child: new AlertDialog(
          title: const Text("Erro de Autenticação"),
          content: new  Text("Login ou senha inválidos!.", style: TextStyle(color: Colors.red[700], fontSize: 24,),),
        ),
      );
    } else {
      if (datauser[0]['nivel'] == 'admin') {
        Navigator.pushReplacementNamed(context, '/homeAdmin');
      } else if (datauser[0]['nivel'] == 'membro') {
        Navigator.pushReplacementNamed(context, '/homePage');
      }
      setState(() {
        email = datauser[0]['email'];
      });
    }
    return datauser;
  }

  double _maxValue({double value, double max}){
    if(value < max){
      return value;
    }else {
      return max;
    }
  }

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;

    return Scaffold(
      backgroundColor: Colors.green[900],
      body: Padding(
        padding: EdgeInsets.only(top: 80, right: 20, left: 20, bottom: 10),
        child: SingleChildScrollView(
         // width: size.width,
        //  height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 400, minWidth: 200),
                  child: Container(
                    width: 200,
                      height: 120,
                      child: Image.asset(
                        "assets/logo2.png",
                        fit: BoxFit.cover,
                      ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
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
                  style: TextStyle(fontSize: 24.0),
                  controller: controllerUser,
                  validator: (value) {
                    if(value.isEmpty) return "Insira um email";
                  },
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      hintText: 'E-mail'
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1,
                height: 60,
                margin: EdgeInsets.only(
                    top:32
                ),
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
                  style: TextStyle(fontSize: 24.0),
                  controller: controllerPass,
                  validator: (value) {
                    if(value.isEmpty) return "Insira sua senha";
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.vpn_key,
                        color: Colors.black,
                      ),
                      hintText: 'Password'
                  ),
                ),
              ),
              Divider(),
              Container(
                height: 40,
                alignment: Alignment.centerRight,
                child: FlatButton(
                  child: Text(
                    "Recuperar Senha",
                    textAlign: TextAlign.right,
                    style: new TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return recuperarSenha();
                      },
                      ),
                      );
                    },
                ),
              ),
              Divider(),
              ButtonTheme(
                minWidth: size.width,
                height: 60.0,
                child: new RaisedButton(
                  onPressed: (){
                  login();
                  Navigator.pop(context);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    "Entrar",
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                  ),
                  color: Colors.blue,
                ),
              ),

              Text(mensaje,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.red,
                ),
              ),
              Divider(),
              Container(
                height: 40,
                alignment: Alignment.center,
                child: FlatButton(
                  child: Text(
                    "Cadastre-se",
                    textAlign: TextAlign.right,
                    style: new TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return cadastroUsuario();
                    },
                    ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

