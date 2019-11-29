import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
        home:Frases()
      )
  );
}

class Frases extends StatefulWidget {
  @override
  _FrasesState createState() => _FrasesState();
}

class _FrasesState extends State<Frases> {
  var _frase = 'Querido Deus, graças Te dou por me ouvir, me guardar e por fazer de tudo para me ver sorrir! (Salmo 64)';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frase do dia'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 80, 10, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              'images/marmot.png',
              height: 150,
            ),
            Text(
                'FRASES DO DIA',
              style: TextStyle(
                fontSize: 37,
                fontWeight: FontWeight.bold,
                color: Colors.orange
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(40),
              child: Text(
                _frase,
                style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(130, 0, 130, 0),
              child: FlatButton(
                padding: EdgeInsets.all(10),
                color: Colors.orange,
                textColor: Colors.white,
                splashColor: Colors.orangeAccent,

                child: Text('Nova Frase',
                    style: TextStyle(
                        fontSize: 15
                    )),
                onPressed: () {
                  /**/
                },
              )
            )
          ],
        ),
      ),
    );
  }
}
