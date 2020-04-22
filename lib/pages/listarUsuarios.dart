import 'package:fazmatricula/pages/detail.dart';
//import 'package:apptienda/pages/registroUsuarios.dart';
import 'package:fazmatricula/pages/cadastro.usuario.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert';

class ListarUser extends StatefulWidget {
  _ListarUserState createState() => _ListarUserState();
}

class _ListarUserState extends State<ListarUser> {


  Future<List> getData() async {
    final response = await http.get("http://fazmatricula-com.umbler.net/getdata.php");
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: new Text("Lista de usuarios"),
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new cadastroUsuario(),

          )
          );
        },
      ),
      body: new FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? new ItemList(
            list: snapshot.data,
          )
              : new Center(
            child: new CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return new Container(
          padding: const EdgeInsets.all(10.0),
          child: new GestureDetector(
            onTap: () => Navigator.of(context).push(
              new MaterialPageRoute(builder: (BuildContext context) => new Detail(
                list: list,
                index: i,
              )
              ),
            ),
            child: new Card(
              child: new ListTile(
                title: new Text(
                  list[i]['nome'],
                  style: TextStyle(fontSize: 25.0, color: Colors.green),
                ),
                leading: new Icon(
                  Icons.person_pin,
                  size: 77.0,
                  color: Colors.green,
                ),
                subtitle: new Text(
                  "Nivel : ${list[i]['nivel']}",
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}


