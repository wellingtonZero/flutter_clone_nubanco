import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Investimentos extends StatelessWidget {
  const Investimentos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _textInvestimentos(),
          _investimentosTexto(),
          _consultarInvestimento(),
          Divider(thickness: 1.6),
          _textShopping(),
          _ShoppingText(),
          Divider(thickness: 1.6),
        ],
      ),
    );
  }

  _textInvestimentos() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Investimentos',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight),
      ],
    );
  }

  _investimentosTexto() {
    return Padding(
      padding: EdgeInsets.only(top: 16.0, left: 0),
      child: Text(
        "O jeito Nu de investir: sem riscos, \n linguagem fácil. A partir de R\$1,00. Faça já seu investimento",
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  _consultarInvestimento() {
    return Container(
      margin: EdgeInsets.only(top: 12, bottom: 12),
      child: Row(
        children: [
          Icon(MdiIcons.cash),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text("Consultar saldo para investimento",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          )
        ],
      ),
    );
  }

  _textShopping () {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Shopping',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight),
      ],
    );
  }
  _ShoppingText() {
    return Padding(
      padding: EdgeInsets.only(top: 16.0, left: 0),
      child: Text(
        "Vantagens exclusivas das nossas marcas preferidas \nConheça as melhores ofertas.",
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
