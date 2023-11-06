import 'package:flutter/material.dart';
import 'dart:math';

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
    "Gratidão não é pagamento, mas um reconhecimento que se demonstra no dia a dia",
    "A vida é 10% o que nos acontece e 90% como reagimos a isso.",
    "O sucesso é a soma de pequenos esforços repetidos dia após dia.",
    "Acredite em si mesmo e em tudo que você é. Saiba que há algo dentro de você que é maior do que qualquer obstáculo.",
    "O único modo de fazer um grande trabalho é amar o que você faz.",
    "A mente é tudo. Você se torna aquilo que você pensa.",
    "Nossa maior fraqueza está em desistir. O caminho mais certo de vencer é tentar mais uma vez.",
    "O segredo do sucesso é a constância do propósito.",
    "A felicidade não é algo pronto. Ela vem das nossas próprias ações.",
    "O tempo é muito lento para os que esperam, muito rápido para os que têm medo, muito longo para os que lamentam, muito curto para os que festejam. Mas, para os que amam, o tempo é eterno.",
    "O sucesso é a realização progressiva de um ideal valioso.",
    "A verdadeira medida de um homem não é como ele se comporta em momentos de conforto e conveniência, mas como ele se mantém em tempos de controvérsia e desafio.",
    "A vida é curta, e cabe a nós torná-la doce.",
  ];

  var fraseGerada = "Clique abaixo para gerar uma frase!";

  void gerarFrase() {
    var numeroSortiado = Random().nextInt(frases.length);
    setState(() {
      fraseGerada = frases[numeroSortiado];
    });
  }

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
              BoxDecoration(border: Border.all(width: 16, color: Colors.white)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Image(
                  image: AssetImage("images/logo.png"),
                  fit: BoxFit.cover,
                ),
                Text(
                  fraseGerada,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
                ElevatedButton(
                    onPressed: gerarFrase,
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
