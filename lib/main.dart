import 'package:flutter/material.dart';

/* 
  Stateless -> Widgets que não podem ser alterados (constantes)
  Stateful -> Widgets que podem ser alterados (variáveis)
  Atalho para criar "st"
*/

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var frases = [
    "Frase 1",
    "Frase 2",
    "Frase 3",
    "Frase 4",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Frases do Dia"),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Container(
          padding: const EdgeInsets.all(16),
          // width: double.infinity, // centraliza tudo do container no centro
          decoration:
              BoxDecoration(border: Border.all(width: 16, color: Colors.amber)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Image(
                  image: AssetImage("images/logo.png"),
                  fit: BoxFit.cover,
                ),
                const Text(
                  "Gratidão não é pagamento, mas um reconhecimento que se demonstra no dia a dia",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      "Nova Frase",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ))
              ]),
        )));
  }
}
