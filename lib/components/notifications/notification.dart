import 'package:flutter/material.dart';
import 'package:nubanco/utils/colors_standard.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _rendimento(),
          _seguro(),
          _saveMoney(),
        ],
      ),
    );
  }

  _rendimento() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 13),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Seu ', // Adicionado 'text:'
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            TextSpan(
              text: "Informe de \nrendimentos ", // Adicionado 'text:'
              style: TextStyle(color: backgroundColor, fontSize: 16),
            ),
            TextSpan(
              text: 'de 2024 rende ', // Adicionado 'text:'
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  _seguro() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 13),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Conheça ', // Adicionado 'text:'
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            TextSpan(
              text: "Nubank Vida\n ", // Adicionado 'text:'
              style: TextStyle(color: backgroundColor, fontSize: 16),
            ),
            TextSpan(
              text: 'um seguro simples e barato ', // Adicionado 'text:'
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  _saveMoney() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 13),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Chegou o ', // Adicionado 'text:'
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            TextSpan(
              text: "débido \n ", // Adicionado 'text:'
              style: TextStyle(color: backgroundColor, fontSize: 16),
            ),
            TextSpan(
              text: 'automático da fatura do... ', // Adicionado 'text:'
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
