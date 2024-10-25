import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubanco/components/controllers/controller_home.dart';

class AccountNubank extends StatefulWidget {
  const AccountNubank({super.key});

  @override
  State<AccountNubank> createState() => _AccountNubankState();
}

class _AccountNubankState extends State<AccountNubank> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _account(),
            _moneyAccount(),
          ],
        ));
  }

  _account() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Conta',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  _moneyAccount() {
    return GetBuilder<ControllerHomePage>(
      init: ControllerHomePage(),
      builder: (controller) {
        return Text(controller.saldo,
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold));
      }
    );
  }
}
