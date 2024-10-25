import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubanco/components/semCartao/semCartao.dart';



import 'package:nubanco/pages/menupages/pegarEmprestado.dart';

import 'package:nubanco/utils/colors_standard.dart';

class MenuItens extends StatelessWidget {
  const MenuItens({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            _itemMenu(icon: MdiIcons.clover, name: 'Área Pix', context: context, destination: SemCartao()),
            _itemMenu(icon: MdiIcons.barcode, name: 'Pagar', context: context, destination: SemCartao()),
            _itemMenu(
                icon: MdiIcons.handHeartOutline,
                name: 'Pegar\nEmprestado',
                extraText: 'R\$13.000',
                context: context,
                destination: PegarEmprestado()), // Exemplo com texto extra
            _itemMenu(icon: MdiIcons.cash, name: 'Transferir', context: context, destination: SemCartao()),
            _itemMenu(icon: MdiIcons.battery10, name: 'Recarga de\n celular', context: context, destination: SemCartao()),
            _itemMenu(icon: MdiIcons.cash, name: 'Depositar', context: context, destination: SemCartao()),
            _itemMenu(icon: MdiIcons.creditCard, name: 'Caixinhas', context: context, destination: SemCartao()),
            _itemMenu(icon: MdiIcons.chartBar, name: 'Investir', context: context, destination: SemCartao()),
          ],
        ),
      ),
    );
  }

  _itemMenu({required IconData icon, required String name, String? extraText, required BuildContext context, required Widget destination}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center, // Centraliza o ícone e o texto extra
            children: [
              InkWell(
                onTap: () {
                  // Navega para a tela especificada
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => destination),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: greyColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    icon,
                    size: 25, // Aumente o tamanho do ícone aqui
                  ),
                ),
              ),
              if (extraText != null)
                Positioned(
                  bottom: 4, // Coloca o texto abaixo do ícone
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 4), // Padding interno da caixa
                    decoration: BoxDecoration(
                      color: backgroundColor, // Cor de fundo da caixa
                      borderRadius: BorderRadius.circular(12), // Borda arredondada
                    ),
                    child: Text(
                      extraText,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white, // Cor do texto
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          Text(
            name,
            style: const TextStyle(
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
