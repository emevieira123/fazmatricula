import 'package:flutter/material.dart';

class inscVestibular extends StatefulWidget {
  @override
  _inscVestibularState createState() => _inscVestibularState();
}

class _inscVestibularState extends State<inscVestibular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Confirmação Vestibular"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Card(
              child: new ListTile(
                title: new Text("Inscrição realizada com sucesso"
                    "!",
                  style: TextStyle(fontSize: 25.0, color: Colors.green),
                ),
              ),
            ),
            Container(
              height: 400,
              width: 380,
              child: Column(
               // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Compareça a institução Fatec Senai"
                          " no dia DD/MM/AAAA, as 19:00 horas, para realização da prova"
                          " escrita.",
                      style: TextStyle(fontSize: 20,),
                      ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: new RawMaterialButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/homePage');
                },
                child: new Icon(
                  Icons.check_circle_outline,
                  color: Colors.green[600],
                  size: 90,
                ),
                shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                elevation: 2.0,
                fillColor: Colors.grey[10],
              ),
            )
          ],
        ),
      ),

    );
  }
}
