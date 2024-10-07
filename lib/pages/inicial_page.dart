import 'dart:async';
import 'package:flutter/material.dart';

class Inicial extends StatefulWidget {
  const Inicial({super.key});

  @override
  State<Inicial> createState() => _InicialState();
}

class _InicialState extends State<Inicial> {
  bool _mostrarBotao = false; // Controle de visibilidade do botão
  bool _logoVisivel = true;   // Controle de visibilidade da logo para o efeito de piscada

  @override
  void initState() {
    super.initState();

    // Timer para exibir o botão após 7 segundos
    Timer(Duration(seconds: 5), () {
      setState(() {
        _mostrarBotao = true; // Exibe o botão
      });
    });

    // Timer para o efeito de piscada da logo após 6 segundos
    Timer(Duration(seconds: 5), () {
      setState(() {
        _logoVisivel = false; // Oculta a logo
      });
      Timer(Duration(milliseconds: 80), () {
        setState(() {
          _logoVisivel = true; // Logo volta a aparecer (efeito de piscada)
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Cor de fundo roxo
          Container(
            color: Colors.deepPurple,
          ),
          // Logo centralizada
          Center(
            child: AnimatedOpacity(
              opacity: _logoVisivel ? 1.0 : 0.0, // Controla a opacidade da logo
              duration: Duration(milliseconds: 80), // Duração da animação de piscada
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo_oficial.png'), // Sua logo
                  ),
                ),
              ),
            ),
          ),
          // Botão na parte inferior
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40.0), // Espaçamento do botão em relação ao fundo
              child: _mostrarBotao
                  ? SizedBox(
                      width: 340,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          // Ação do botão
                        },
                        child: const Text(
                          'Usar senha do Nubank',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  : SizedBox(), // Placeholder até o botão aparecer
            ),
          ),
        ],
      ),
    );
  }
}
