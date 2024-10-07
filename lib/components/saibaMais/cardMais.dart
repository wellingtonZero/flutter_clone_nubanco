import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:nubanco/utils/colors_standard.dart';

class CardMais extends StatelessWidget {
  final String imagem;
  final String title;
  final String description;
  final String buttonText;
  final String url; // URL como string

  CardMais({
    Key? key,
    required this.imagem,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.url, // Adicionado para URL
  });

  // Função para abrir a URL no navegador com Uri
  Future<void> _launchURL() async {
    final Uri uri = Uri.parse(url); // Converte a string para Uri
    if (!await launchUrl(uri)) {
      throw 'Não foi possível abrir a URL $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Image.asset(imagem, fit: BoxFit.cover, width: 230),
          const SizedBox(height: 22),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 22),
          GestureDetector(
            onTap: _launchURL, // Chama a função para abrir o link
            child: Container(
              margin: const EdgeInsets.only(left: 12),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Text(
                buttonText,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
