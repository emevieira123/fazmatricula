import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';
import 'perfil.page.dart';
import 'package:fazmatricula/pages/loginPage.dart';

class HomeAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text(
          'Home Admin',
          style: TextStyle(fontSize: 24),
        ),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Emerson Vieira'),
              accountEmail: new Text('emevieira@gmail.com'),
              currentAccountPicture:SizedBox(
                width: 170,
                height: 170,
                child: Image.asset("assets/messi2.png"),
              ),
            ),
            new ListTile(
              title: new Text('Perfil',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                prefix0.Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new perfilPage())
                );
              },
            ),
            Divider(color: Colors.black),
            new ListTile(
              title: new Text('Sair',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                prefix0.Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new LoginPage())
                );
              },
            ),
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
          //Row 1
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pages/cadastroADM');
                  },
                  child: new Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 90,
                  ),
                  shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                  elevation: 2.0,
                  fillColor: Colors.grey[500],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pages/listarUsuarios');
                  },
                  child: new Icon(
                    Icons.list,
                    color: Colors.white,
                    size: 90,
                  ),
                  shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                  elevation: 2.0,
                  fillColor: Colors.grey[500],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pages/postarCurso');
                  },
                  child: new Icon(
                    Icons.check_circle_outline,
                    color: Colors.white,
                    size: 90,
                  ),
                  shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                  elevation: 2.0,
                  fillColor: Colors.grey[500],
                ),
              ),
            ],
          ),
          //Row 2
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pages/listarUsuarios');
                  },
                  child: new Icon(
                    Icons.school,
                    color: Colors.white,
                    size: 90,
                  ),
                  shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                  elevation: 2.0,
                  fillColor: Colors.grey[500],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pages/listarUsuarios');
                  },
                  child: new Icon(
                    Icons.content_paste,
                    color: Colors.white,
                    size: 90,
                  ),
                  shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                  elevation: 2.0,
                  fillColor: Colors.grey[500],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pages/listarUsuarios');
                  },
                  child: new Icon(
                    Icons.insert_link,
                    color: Colors.white,
                    size: 90,
                  ),
                  shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                  elevation: 2.0,
                  fillColor: Colors.grey[500],
                ),
              ),
            ],
          ),
          //Row 3
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pages/listarUsuarios');
                  },
                  child: new Icon(
                    Icons.vpn_key,
                    color: Colors.white,
                    size: 90,
                  ),
                  shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                  elevation: 2.0,
                  fillColor: Colors.grey[500],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pages/listarUsuarios');
                  },
                  child: new Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 90,
                  ),
                  shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                  elevation: 2.0,
                  fillColor: Colors.grey[500],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/loginPage');
                  },
                  child: new Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                    size: 90,
                  ),
                  shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                  elevation: 2.0,
                  fillColor: Colors.grey[500],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
