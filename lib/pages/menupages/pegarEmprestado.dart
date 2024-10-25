import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubanco/utils/colors_standard.dart';

class PegarEmprestado extends StatefulWidget {
  const PegarEmprestado({super.key});

  @override
  State<PegarEmprestado> createState() => _PegarEmprestadoState();
}

class _PegarEmprestadoState extends State<PegarEmprestado> {

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
      //backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(),
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
