import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
                        Text('Empréstimos ',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        Text(
                          'Nubank',
                          style: TextStyle(
                              fontSize: 30,
                              color: backgroundColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "Para você realizar seus objetivos",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text("Temos 1 opção para você",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      height: 200,
                      width: MediaQuery.of(context).size.width * 0.88,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 221, 221, 221),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: greyColor,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Icon(
                                    MdiIcons.accountCash,
                                  )),
                              SizedBox(width: 20),
                              Text(
                                "Empréstimo \nPessoal",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  
                                },
                                child: Text(
                                  'Contratar',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.white),
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
                          Divider(thickness: 0.6),
                          Text(
                            "Saldo Disponível",
                            style: TextStyle(color: backgroundColor),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text("R\$ 13.000,00",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text('*Empréstimo válido até dia 10 de novembro 2024',style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                )),
              )
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
