import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nubanco/pages/home_page.dart';

class Inicial extends StatefulWidget {
  const Inicial({super.key});

  @override
  State<Inicial> createState() => _InicialState();
}

class _InicialState extends State<Inicial> {
  bool _navegando = false;
  bool _mostrarBotao = false; // Controle de visibilidade do botão
  bool _logoVisivel = true; // Controle de visibilidade da logo para o efeito de piscada
  bool _mostrarContainer = false; // Controle do container que sobe
  final TextEditingController _senhaController = TextEditingController(); // Controller para o campo de senha
  String? _mensagemErro; // Mensagem de erro para senha inválida

  @override
  void initState() {
    super.initState();

    // Timer para exibir o botão após 5 segundos
    Timer(const Duration(seconds: 5), () {
      setState(() {
        _mostrarBotao = true; // Exibe o botão
      });
    });

    // Timer para o efeito de piscada da logo após 5 segundos
    Timer(const Duration(seconds: 5), () {
      setState(() {
        _logoVisivel = false; // Oculta a logo
      });
      Timer(const Duration(milliseconds: 80), () {
        setState(() {
          _logoVisivel = true; // Logo volta a aparecer (efeito de piscada)
        });
      });
    });
  }

  // Função para verificar a senha e navegar para a próxima tela
  void _verificarSenha() {
    if (_senhaController.text == '123') {
      // Se a senha estiver correta, mostra o carregamento e navega para a HomePage
      setState(() {
        _mensagemErro = null; // Limpa a mensagem de erro
        _navegando = true; // Mostra o círculo de carregamento
      });
      Future.delayed(const Duration(seconds: 5), () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      });
    } else {
      // Se a senha estiver incorreta, mostra a mensagem de erro
      setState(() {
        _mensagemErro = 'Senha inválida. Tente novamente.'; // Define a mensagem de erro
        _senhaController.clear(); // Limpa o campo de senha
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Desativa o ajuste automático ao surgir o teclado
      body: _navegando // Verifica se está navegando
          ? Center(
              child: CircularProgressIndicator(
                strokeWidth: 6.0,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.deepPurple),
              ),
            )
          : Stack(
              children: [
                // Cor de fundo roxo
                Container(
                  color: Colors.deepPurple,
                ),
                // Logo centralizada
                Center(
                  child: AnimatedOpacity(
                    opacity: _logoVisivel ? 1.0 : 0.0, // Controla a opacidade da logo
                    duration: const Duration(milliseconds: 80), // Duração da animação de piscada
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
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
                                // Ao pressionar, o container de senha sobe
                                setState(() {
                                  _mostrarContainer = true;
                                });
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
                        : const SizedBox(), // Placeholder até o botão aparecer
                  ),
                ),
                // Container animado que sobe ao pressionar o botão
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  bottom: _mostrarContainer ? 0 : -MediaQuery.of(context).size.height,
                  left: 0,
                  right: 0,
                  height: MediaQuery.of(context).size.height - kToolbarHeight, // Reduz o tamanho pela altura da AppBar
                  child: SafeArea(
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Botão de voltar no topo, dentro de um Padding
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0), // Adiciona espaço acima do botão de voltar
                            child: IconButton(
                              icon: const Icon(Icons.arrow_back),
                              onPressed: () {
                                // Volta para a tela anterior
                                setState(() {
                                  _mostrarContainer = false;
                                });
                              },
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              'Agora digite sua senha do aplicativo',
                              style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: TextField(
                              controller: _senhaController,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                labelText: '8 dígitos ou mais',
                                labelStyle: const TextStyle(
                                  fontSize: 24,
                                ),
                                errorText: _mensagemErro, // Exibe a mensagem de erro
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text('Essa é aquela senha que você cadastrou'),
                          ),
                          const Spacer(),
                          // Botão de confirmação (FloatingActionButton)
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: FloatingActionButton(
                                backgroundColor: Colors.deepPurple,
                                onPressed: _verificarSenha,
                                child: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20), // Espaçamento entre o botão e o fundo
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
