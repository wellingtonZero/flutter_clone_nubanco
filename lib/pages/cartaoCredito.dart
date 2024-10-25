import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubanco/utils/colors_standard.dart';

class CartaoCredito extends StatefulWidget {
  const CartaoCredito({super.key});

  @override
  State<CartaoCredito> createState() => _CartaoCreditoState();
}

class _CartaoCreditoState extends State<CartaoCredito> {
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
      body:SingleChildScrollView(
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
                                  'Crédito Disponível ',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
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
}
