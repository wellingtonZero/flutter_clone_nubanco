import 'package:flutter/material.dart';
import 'package:nubanco/components/saibaMais/cardMais.dart';

class SaibaMais extends StatelessWidget {
  const SaibaMais({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12), // Adicionado const
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Descubra mais",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ), // Adicionado const
           SizedBox(height: 16), // Adicionado const
           // Alterei o nome para seguir a convenção de métodos privados com letra minúscula
           _cards()
        ],
      ),
    );
  }

  Widget _cards() { // Tipo de retorno explicitado
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CardMais(
            imagem: 'assets/foto1.jpg',
            title: 'Parcela compras no app',
            description: 'Sua liberdade financeira \n começa com você...',
            buttonText: 'Conhecer',
            url:"https://international.nubank.com.br/pt-br/sobre/"
          ),
          SizedBox(width: 20),
          CardMais(
            imagem: 'assets/foto2.jpg',
            title: 'Empréstimos em 24 horas',
            description: 'Creditado no mesmo dia \n depois da análise...',
            buttonText: 'Conhecer',
            url:"https://international.nubank.com.br/pt-br/sobre/"
          ),
          SizedBox(width: 20),
          CardMais(
            imagem: 'assets/foto3.jpg',
            title: 'Segurança e controle',
            description: 'Maior segurança para você\n aproveite nubank...',
            buttonText: 'Conhecer',
            url:"https://international.nubank.com.br/pt-br/sobre/"
          ),
        ],
      ),
    );
  }
}
