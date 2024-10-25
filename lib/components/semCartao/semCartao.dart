import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubanco/utils/colors_standard.dart';

class SemCartao extends StatefulWidget {
  const SemCartao({super.key});

  @override
  State<SemCartao> createState() => _SemCartaoState();
}

class _SemCartaoState extends State<SemCartao> {
  @override
  void dispose() {
    // Restaurar a cor da barra de status ao voltar para a tela anterior
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:
          backgroundColor, // Mesma cor da HomePage (ajuste se necessário)
      statusBarIconBrightness:
          Brightness.light, // Ícones claros para fundo escuro
    ));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 20.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Cartão a caminho ',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        "Seu cartão encontra-se em transporte",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 30),
                      Text('Enquanto seu cartão está a caminho aproveite.',
                          style: TextStyle(fontSize: 18)),
                      Text('Faça seu empréstimo agora mesmo e receba em até 24 horas.',
                          style: TextStyle(fontSize: 18)),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed:  null,
                        child: Text(
                          'Recebi o cartão',
                          style: TextStyle(fontSize: 17.0, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: backgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      preferredSize: const Size.fromHeight(0),
    );
  }
}
