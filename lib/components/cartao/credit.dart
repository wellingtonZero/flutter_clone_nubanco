import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubanco/components/cartao/enderecoCartao.dart';
import 'package:nubanco/utils/colors_standard.dart';

class MyCreditCard extends StatelessWidget {
  const MyCreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartaoEndereco()),
            );
          },
      child: Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.fromLTRB(16, 10, 20, 10),
          decoration: BoxDecoration(
            color: greyColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Icon(
                MdiIcons.creditCard,
                color: Colors.black,
              ),
              SizedBox(width: 12),
              Text(
                'Meu Cartão',
                style:
                    TextStyle(fontSize:19.0,fontWeight: FontWeight.bold, color: backgroundColor),
              ),
            ],
          )),
    );
  }
}
