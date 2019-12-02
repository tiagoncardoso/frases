import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
        home:Frases()
      )
  );
}

class BuildFrases {
  var _frases;
  var _frase;
  var _qtd;

  BuildFrases() {
    this.frases = this.bdFrases();
    this.frase = this.frases[this.randomNumber(this.qtd)];
  }

  void set frase(String frase) {
    _frase = frase;
  }

  int randomNumber(int max) {
    var rnd = new Random();

    return rnd.nextInt(max);
  }

  String get frase {
    return _frase;
  }

  int get qtd {
    return _qtd;
  }

  void set frases(List frases) {
    _frases = frases;
    _qtd = frases.length;
  }

  List get frases {
    return _frases;
  }

  List bdFrases() {
    return [
      'O Senhor te abençoe e te guarde. O Senhor faça resplandecer o seu rosto sobre ti, e tenha misericórdia de ti. O Senhor sobre ti levante o seu rosto e te dê a paz. (Números 6:24-26)',
      'O próprio Senhor irá à sua frente e estará com você; ele nunca o deixará, nunca o abandonará. Não tenha medo! Não se desanime! (Deuteronômio 31:8)',
      'Querido Deus, Tu és minha proteção, a minha fortaleza. Tu és o meu Deus, eu confio em Ti. (Salmo 91:2)',
      'Deus sabe o que é bom para você. (Eclesiastes 6:12)',
      'Obrigado Senhor, pelo Seu maravilhoso amor. (Salmo 107:15)',
      'Mil poderão cair ao seu lado, dez mil à sua direita, mas nada o atingirá. (Salmos 91:7)',
      'Das alturas, o Eterno enxerga as profundezas. Não importa a distância, Ele sabe tudo sobre nós. (Salmo 138:6)',
      'O meu amado é meu, e eu sou dele! (Cânticos 2:16)',
      'Senhor a Ti clamo, escuta-me; inclina os Teus ouvidos à minha voz, quando a Ti clamar. (Salmo 141:1)',
      'Honra teu pai e tua mãe, a fim de que tenhas vida longa na terra que o Senhor teu Deus te dá. (Êxodo 20:12)',
      'Ainda que a minha mente e o meu corpo enfraqueçam, Deus é a minha força, Ele é tudo o que eu preciso. (Salmo 73:26)',
      'Venham e vejam o que Deus tem feito; como são impressionantes as suas obras em favor dos homens! (Salmos 66:5)',
      'Pois onde estiver o amor, ali estará também o nosso coração.(Lucas 12:34)',
      'Fé não faz as coisas serem fáceis mas as tornam totalmente possíveis, creia. (Romanos 5:8)',
      'Que Deus te salve com a Sua graça e te abençoe! Que a luz de Seu rosto brilhe sobre ti. (Salmo 67:1)',
      'Eis que envio um anjo à frente de vocês para protegê-los por todo o caminho e fazê-los chegar ao lugar que preparei. (Êxodo 23:20)',
      'Querido Deus, graças Te dou por me ouvir, me guardar e por fazer de tudo para me ver sorrir! (Salmo 64)'
    ];
  }
}

class Frases extends StatefulWidget {
  @override
  _FrasesState createState() => _FrasesState();
}

class _FrasesState extends State<Frases> {
  var _fraseObj = new BuildFrases();

  @override
  Widget build(BuildContext context) {
    var _frase = _fraseObj.frase;

    return Scaffold(
      appBar: AppBar(
        title: Text('Frase do dia'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 40, 10, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              'images/marmot.png',
              height: 150,
            ),
            Text(
                'Frases do Dia',
              style: TextStyle(
                fontSize: 37,
                fontFamily: 'Cookie',
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
                  fontFamily: 'Sansation',
                  // fontWeight: FontWeight.w100
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
                  setState(() {
                    _fraseObj = new BuildFrases();
                  });
                },
              )
            )
          ],
        ),
      ),
    );
  }
}
