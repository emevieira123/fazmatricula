import 'package:flutter/material.dart';

class perfilPage extends StatefulWidget {
  @override
  _perfilPageState createState() => _perfilPageState();
}

class _perfilPageState extends State<perfilPage> {

  final String url = 'https://correio-cdn3.cworks.cloud/fileadmin/_processed_/a/c/csm_messi_da_argentina_carl_de_souza_afp_4b4a0b9fda.jpg';
  final Color green = Colors.green[900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 32),
            width: MediaQuery.of(context).size.width,
            height: 400,
            decoration: BoxDecoration(
              color: green,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                      children: <Widget>[
                        Text('Familiar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                        ),
                        Text('12',
                            style: TextStyle(
                            color: Colors.white,
                              fontSize: 20.0,
                        ),
                        ),
                      ],
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      height: 170,
                      child: Image.asset("assets/messi2.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Column(
                        children: <Widget>[
                          Text('Folowing',
                            style: TextStyle(
                            color: Colors.white,
                              fontSize: 20.0,
                          ),
                          ),
                          Text('18',
                            style: TextStyle(
                                color: Colors.white,
                              fontSize: 20.0
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text("ID: 123456789",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 32),
                  child: Text("Lionel Andrés Messi",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                          children: <Widget>[
                            Icon(Icons.group_add,
                              color: Colors.white,
                            ),
                            Text('Amigos',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),

                      Column(
                        children: <Widget>[
                          Icon(Icons.group,
                            color: Colors.white,
                          ),
                          Text('Grupos',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.videocam,
                            color: Colors.white,
                          ),
                          Text('Videos',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                          children: <Widget>[
                            Icon(Icons.favorite,
                              color: Colors.white,
                            ),
                            Text('Likes',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 64, left: 32, right: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(Icons.table_chart,
                          color: Colors.grey,
                          ),
                          Text('Líderes',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),)
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.show_chart,
                            color: Colors.grey,
                          ),
                          Text('Level Up',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),)
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.card_giftcard,
                            color: Colors.grey,
                          ),
                          Text('Presentes',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),)
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 64, left: 32, right: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(Icons.code,
                            color: Colors.grey,
                          ),
                          Text('QR Code',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),)
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.blur_circular,
                            color: Colors.grey,
                          ),
                          Text('Bônus diário',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),)
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.visibility,
                            color: Colors.grey,
                          ),
                          Text('Visitantes',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
