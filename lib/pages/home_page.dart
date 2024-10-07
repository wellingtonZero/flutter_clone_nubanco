import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubanco/components/cartao/cartao.dart';
import 'package:nubanco/components/cartao/credit.dart';
import 'package:nubanco/components/contaSaldo/account.dart';
import 'package:nubanco/components/head/header.dart';
import 'package:nubanco/components/investimentos/investimentos.dart';
import 'package:nubanco/components/menuItens/menuitens.dart';
import 'package:nubanco/components/notifications/notification.dart';
import 'package:nubanco/components/saibaMais/saibamais.dart';
import 'package:nubanco/utils/colors_standard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    // Aguardar o frame atual ser finalizado antes de aplicar a cor da barra de status
    WidgetsBinding.instance.addPostFrameCallback((_) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: backgroundColor, // Cor da barra de status
        statusBarIconBrightness: Brightness.light, // Cor dos ícones
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      //backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              AccountNubank(),
              MenuItens(),
              SizedBox(height: 30),
              NotificationsPage(),
              SizedBox(height: 40),
              Divider(thickness: 0.4),
              Cartao(),
              Divider(thickness: 0.4),
              MyCreditCard(),
              Investimentos(),
              SaibaMais(),
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
