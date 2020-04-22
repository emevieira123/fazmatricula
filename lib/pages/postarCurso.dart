import 'package:fazmatricula/pages/homeAdmin.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class postarCurso extends StatefulWidget {
  _postarCursoState createState() => _postarCursoState();
}

class _postarCursoState extends State<postarCurso> {
  TextEditingController controllerCurso = new TextEditingController();
  TextEditingController controllerVagas = new TextEditingController();


  var _formkey = GlobalKey<FormState>();

  void addData() {
    var url = "http://fazmatricula-com.umbler.net/postCurso.php";

    http.post(url, body: {
      "nomecurso": controllerCurso.text,
      "vagas": controllerVagas.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Postar Cursos"),
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
                controller: controllerCurso,
                validator: (value) {
                  if(value.isEmpty) return "O nome do curso";
                },
                cursorColor: Colors.green[900],
                autofocus: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.green[900], fontSize: 24.0),
                decoration: InputDecoration(
                  hintText: "Ex: Recursos Humanos",
                  labelText: "Nome Curso",
                  labelStyle: TextStyle(color: Colors.green[900],
                    fontSize: 30.0,
                  ),
                ),
              ),
              Divider(),
              TextFormField(
                controller: controllerVagas,
                validator: (value) {
                  if(value.isEmpty) return "Informe a quantidade de vagas";
                },
                cursorColor: Colors.green[900],
                autofocus: true,
                keyboardType: TextInputType.number,
                style: new TextStyle(color: Colors.green[900], fontSize: 24.0),
                decoration: InputDecoration(
                  hintText: "Ex: 10",
                  labelText: "Vagas",
                  labelStyle: TextStyle(color: Colors.green[900],
                    fontSize: 30.0,
                  ),
                ),
              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                  onPressed: (){
                    if (_formkey.currentState.validate()) {
                      addData();
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return HomeAdmin();
                      },
                      ),
                      );
                    }
                  },
                  child: Text(
                    "Publicar",
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
