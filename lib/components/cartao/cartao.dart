import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubanco/components/semCartao/semCartao.dart';
import 'package:nubanco/utils/colors_standard.dart';

class Cartao extends StatefulWidget {
  const Cartao({super.key});

  @override
  State<Cartao> createState() => _CartaoState();
}

class _CartaoState extends State<Cartao> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _iconCreditCard(),
          _textCartao(),
          _invoice(),
          _limite(),
        ],
      ),
    );
  }

  _iconCreditCard() {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Icon(MdiIcons.creditCard),
    );
  }

  _textCartao() {
    return GestureDetector(
      onTap:(){
        Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SemCartao()),
                  );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              'Cartão de crédito',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SemCartao()),
                  );
            },
            child: Icon(MdiIcons.chevronRight)),
        ],
      ),
    );
  }

  _invoice() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Fatura atual',
        style: TextStyle(color: Colors.black),),
        Text('R\$ 0,00 ',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
      ],
    );
  }

   _limite() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('Limite Disponível',
          style: TextStyle(color: backgroundColor),),
        ),
        Text('R\$ 900,00 ',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
      ],
    );
  }
}