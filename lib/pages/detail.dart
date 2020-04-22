import 'package:fazmatricula/pages/editdata.dart';
import 'package:fazmatricula/pages/listarUsuarios.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Detail extends StatefulWidget {
  List list;
  int index;

  Detail({this.index, this.list});

  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  void deleteData(){
    var url="http://fazmatricula-com.umbler.net/deleteData.php";
    http.post(url, body: {
      'id': widget.list[widget.index]['id']
    });
  }

  void Confirmar (){
    AlertDialog alertDialog = new AlertDialog(
      content: new Text("Desejar realmente excluir '${widget.list[widget.index]['nome']}'"),
      actions: <Widget>[
        new RaisedButton(
          child: new Text("Sim", style: new TextStyle(color: Colors.white, fontSize: 18),),
          color: Colors.green[700],
          onPressed: () {
            deleteData();
            Navigator.of(context).push(
              new MaterialPageRoute(
                builder: (BuildContext context) => new ListarUser(),
              ),
            );
          },
        ),
        new RaisedButton(
          child: new Text("Não", style: new TextStyle(color: Colors.white, fontSize: 18),),
          color: Colors.red[700],
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text("${widget.list[widget.index]['nome']}"),),
      body: new Container(
        height: 270.0,
        padding: const EdgeInsets.all(20.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Padding(padding: const EdgeInsets.only(top: 30.0),),
              new Text(widget.list[widget.index]['nome'], style: new TextStyle(fontSize: 20.0),),
              Divider(),
              new Text("Nivel : ${widget.list[widget.index]['nivel']}", style: new TextStyle(fontSize: 18.0),),
              new Padding(padding: const EdgeInsets.only(top: 30.0),),

              new Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new RaisedButton(
                    child: new Text("Editar", style: TextStyle(color: Colors.white, fontSize: 24),),
                    color: Colors.green[700],
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)
                    ),
                    onPressed: () => Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context) => new EditData(list: widget.list, index: widget.index,),
                      ),
                    ),
                  ),
                  VerticalDivider(),
                  new RaisedButton(
                    child: new Text("Eliminar", style: TextStyle(color: Colors.white, fontSize: 24),),
                    color: Colors.red[700],
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)
                    ),
                    onPressed: () => Confirmar(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
