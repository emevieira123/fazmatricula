import 'package:fazmatricula/pages/listarUsuarios.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EditData extends StatefulWidget {

  final List list;
  final int index;

  EditData({this.list, this.index});
  _EditDataState createState() => _EditDataState();
}

class _EditDataState extends State<EditData> {

  TextEditingController controllerNome;
  TextEditingController controllerSobrenome;
  TextEditingController controllerEmail;
  TextEditingController controllerPassword;
  TextEditingController controllerNivel;

  void editData(){
    var url="http://fazmatricula-com.umbler.net/editdata.php";
    http.post(url,body: {
      "id": widget.list[widget.index]['id'],
      "nome": controllerNome.text,
      "sobrenome": controllerSobrenome.text,
      "email": controllerEmail.text,
      "senha": controllerPassword.text,
      "nivel": controllerNivel.text,
    });
  }

  @override
  void initState() {
    controllerNome = new TextEditingController(text: widget.list[widget.index]['nome']);
    controllerSobrenome = new TextEditingController(text: widget.list[widget.index]['sobrenome']);
    controllerEmail = new TextEditingController(text: widget.list[widget.index]['email']);
    controllerPassword = new TextEditingController(text: widget.list[widget.index]['senha']);
    controllerNivel = new TextEditingController(text: widget.list[widget.index]['nivel']);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Editar"),
      ),
      body: Form(
        child: ListView(
          padding: const EdgeInsets.all(10.0),
          children: <Widget>[
            new Column(
              children: <Widget>[
                new ListTile(
                  leading: const Icon(Icons.person, color: Colors.black,),
                  title: new TextFormField(
                    controller: controllerNome,
                    validator: (value) {
                      if (value.isEmpty) return "Cadastre um nome";
                    },
                    decoration: new InputDecoration(
                      hintText: "Nome", labelText: "Nome",
                    ),
                  ),
                ),
                new ListTile(
                  leading: const Icon(Icons.person, color: Colors.black,),
                  title: new TextFormField(
                    controller: controllerSobrenome,
                    validator: (value) {
                      if (value.isEmpty) return "Cadastre um sobrenome";
                    },
                    decoration: new InputDecoration(
                      hintText: "Sobrenome", labelText: "Sobrenome",
                    ),
                  ),
                ),
                new ListTile(
                  leading: const Icon(Icons.email, color: Colors.black,),
                  title: new TextFormField(
                    controller: controllerEmail,
                    validator: (value) {
                      if (value.isEmpty) return "Cadastre um email";
                    },
                    decoration: new InputDecoration(
                      hintText: "Email", labelText: "Email",
                    ),
                  ),
                ),
                new ListTile(
                  leading: const Icon(Icons.vpn_key, color: Colors.black,),
                  title: new TextFormField(
                    obscureText: true,
                    controller: controllerPassword,
                    validator: (value) {
                      if (value.isEmpty) return "Cadastre uma senha";
                    },
                    decoration: new InputDecoration(
                        hintText: "Senha", labelText: "Senha"
                    ),
                  ),
                ),
                new ListTile(
                  leading: const Icon(Icons.list, color: Colors.black,),
                  title: new TextFormField(
                    controller: controllerNivel,
                    validator: (value) {
                      if (value.isEmpty) return "Cadastre um nivel";
                    },
                    decoration: new InputDecoration(
                        hintText: "Nivel", labelText: "Nivel"
                    ),
                  ),
                ),
                const Divider(
                  height: 1.0,
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                new RaisedButton(
                  child: new Text("Salvar", style: TextStyle(color: Colors.white, fontSize: 24),),
                  color: Colors.green[700],
                  onPressed: (){
                    editData();
                    Navigator.of(context).push(
                        new MaterialPageRoute(
                            builder: (BuildContext context) => new ListarUser()
                        )
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
