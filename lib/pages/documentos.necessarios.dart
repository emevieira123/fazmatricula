import 'package:fazmatricula/pages/graduacao.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DocumentosNecessarios extends StatefulWidget {
  @override
  _DocumentosNecessariosState createState() => _DocumentosNecessariosState();
}

class _DocumentosNecessariosState extends State<DocumentosNecessarios> {

  TextStyle _getStyle(){
    return TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green[900]);
  }

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Documentos Necessários'),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 36),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('Antes de iniciarmos a matrícula\n'
                            'certifique-se de ter em mãos\n'
                              'os documentos a seguir:',
                        textAlign: TextAlign.center,
                        style: _getStyle(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                          '* Foto nitida de rosto;\n\n'
                          '* RG e CPF;\n\n'
                          '* Diploma de Conclusão Ensino Médio;\n\n'
                          '* Historico escolar;\n\n'
                          '* Titulo de eleitor (se for maior \n   de 18 anos);\n\n'
                          '* Comprovante de reservista de Exército\n  (para homens);\n\n'
                          '* Certidão de nascimento ou casamento;\n\n'
                          '* Comprovante de residência.\n',

                        style: TextStyle(
                          color: Colors.green[900],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      FloatingActionButton(
                        backgroundColor: Colors.green[900],
                        child: Icon(Icons.arrow_forward_ios), onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return graduacaoPage();
                        }));
                      },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}


