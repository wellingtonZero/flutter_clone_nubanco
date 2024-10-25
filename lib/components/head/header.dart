import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubanco/components/controllers/controller_home.dart';
import 'package:nubanco/utils/colors_standard.dart';
import 'package:url_launcher/url_launcher.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  Future<void> _launchURL() async {
    final Uri url = Uri.parse('https://nubank.com.br/contato/');

    if (!await launchUrl(url)) {
      throw 'Não foi possível abrir a URL: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _profile(),
              _options(),
            ],
          ),
          SizedBox(height: 10),
          _welcome(),
        ],
      ),
    );
  }

  _profile() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80), color: secondaryPurple),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            MdiIcons.accountOutline,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  _options() {
    return Row(
      children: [
        GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (controllerHomePage) {
              return IconButton(
                onPressed: () => controllerHomePage.showValue(),
                icon: Icon(
                    controllerHomePage.eyesValue
                        ? MdiIcons.eyeOutline
                        : MdiIcons.eyeOff,
                    color: Colors.white),
              );
            }),
        IconButton(
            onPressed: () {
              _launchURL();
            },
            icon: const Icon(
              MdiIcons.helpCircleOutline,
              color: Colors.white,
            )),
      ],
    );
  }

  _welcome() {
    return Container(
      margin: const EdgeInsets.only(left: 20, bottom: 20),
      child: const Text(
        "Olá, Fulano",
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
