import 'package:flutter/material.dart';
import 'inscVestibular.dart';

class graduacaoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Inscrição Vestibular"),
      ),
      body: Container(
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
          SizedBox(
            height: 8,
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
                style: TextStyle(fontSize: 24.0),
                //controller: controllerUser,
                validator: (value) {
                  if(value.isEmpty) return "Insira um email";
                },
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.green[700],
                    ),
                    hintText: 'Nome Completo'
                ),
              ),
            ),
            SizedBox(
              height: 16,
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
                style: TextStyle(fontSize: 24.0),
                //controller: controllerUser,
                validator: (value) {
                  if(value.isEmpty) return "Insira um email";
                },
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.contact_mail,
                      color: Colors.green[700],
                    ),
                    hintText: 'CPF'
                ),
              ),
            ),
            SizedBox(
              height: 16,
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
                style: TextStyle(fontSize: 24.0),
                //controller: controllerUser,
                validator: (value) {
                  if(value.isEmpty) return "Insira um email";
                },
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Colors.green[700],
                    ),
                    hintText: 'E-mail'
                ),
              ),
            ),
            SizedBox(
              height: 16,
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
                style: TextStyle(fontSize: 24.0),
                //controller: controllerUser,
                validator: (value) {
                  if(value.isEmpty) return "Insira um email";
                },
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.phone,
                      color: Colors.green[700],
                    ),
                    hintText: 'E-mail'
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 16,
            ),
            ButtonTheme(
              height: 40.0,
              child: RaisedButton(
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return inscVestibular();
                  },
                  ),
                  ),
                },
                child: Text(
                  "Inscrever-se",
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
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
    );
  }
}
