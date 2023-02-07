import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gate_server/model/soldier.dart';
import 'package:flutter_gate_server/view/widgets/body.dart';
import 'package:flutter_gate_server/view/widgets/footer.dart';
import 'package:flutter_gate_server/view/widgets/header.dart';
import 'package:flutter_gate_server/view/widgets/sidebar.dart';
import 'package:get/get.dart';
import '../const.dart';
import '../controller/server.dart';

class SoldierPage extends StatelessWidget {
  const SoldierPage({Key? key, required this.soldier}) : super(key: key);
  final Soldier? soldier;
  @override
  Widget build(BuildContext context) {
    final Server controller = Get.find();
    return RawKeyboardListener(
      focusNode: FocusNode(),
      autofocus: true,
      onKey: (value) {
        if (value.isKeyPressed(LogicalKeyboardKey.arrowLeft)) {
          controller.soldier.value = null;
        }
      },
      child: Scaffold(
        body: (soldier!.rating == 'د')
            ? Banner(
                message: 'تحذير',
                location: BannerLocation.topStart,
                color: const Color.fromARGB(255, 0, 55, 100),
                textStyle: const TextStyle(fontSize: 35),
                textDirection: TextDirection.rtl,
                child: Container(
                  decoration: gradiantDecorationRed,
                  child: Center(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            const Header(),
                            Body(soldier: soldier),
                            const Footer(),
                          ],
                        ),
                        SideBar(
                          photo: soldier!.photo,
                          notes: soldier!.notes,
                        )
                      ],
                    ),
                  ),
                ),
              )
            : Container(
                decoration: gradiantDecoration,
                child: Center(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Header(),
                          Body(soldier: soldier!),
                          const Footer(),
                        ],
                      ),
                      SideBar(
                        photo: soldier!.photo,
                        notes: soldier!.notes,
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
