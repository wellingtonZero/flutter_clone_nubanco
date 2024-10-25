import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubanco/utils/colors_standard.dart';

class ContaSaldo extends StatefulWidget {
  const ContaSaldo({super.key});

  @override
  State<ContaSaldo> createState() => _ContaSaldoState();
}

class _ContaSaldoState extends State<ContaSaldo> {
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
                            'Conta ',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text('Saldo: R\$ 0.00',style:TextStyle(fontSize: 20),),
                      SizedBox(height: 50),
                      Text(
                            'Importante ',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                      Text('Após retirada do cartão, sua conta \nestá liberada para todas as operações\nPix e Recebimentos em conta.',style:TextStyle(fontSize: 20),),
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
