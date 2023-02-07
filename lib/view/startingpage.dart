import 'package:flutter/material.dart';
import 'package:flutter_gate_server/const.dart';
import 'package:flutter_gate_server/controller/client.dart';
import 'package:flutter_gate_server/model/soldier.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gate_server/view/widgets/input.dart';
import 'package:get/get.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    final Client controller = Get.put(Client());

    return RawKeyboardListener(
      autofocus: false,
      focusNode: FocusNode(),
      onKey: (value) {
        if (value.isKeyPressed(LogicalKeyboardKey.enter)) {
          controller.sendID();
          controller.resetID();
        }
      },
      child: Scaffold(
        body: Container(
          decoration: gradiantDecoration,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 0.2 * w,
                child: const FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      'البوابة الرئيسية',
                      style: TextStyle(
                          fontFamily: 'one',
                          color: Color.fromARGB(255, 75, 74, 75)),
                    )),
              ),
              Image.asset(
                "lib/assets/cairotrafic.png",
                width: 0.2 * w,
              ),
              Input(
                textEditingController: controller.textEditingController,
              ),
              SizedBox(
                width: 0.2 * w,
                child: FittedBox(
                    fit: BoxFit.contain,
                    child: Column(
                      children: const [
                        Text(
                          'الإدارة العامة لمرور القاهرة ',
                          style: TextStyle(
                              fontFamily: 'one',
                              color: Color.fromARGB(255, 75, 74, 75)),
                        ),
                        Text(
                          'إدارة المجندين والتدريب',
                          style: TextStyle(
                              fontFamily: 'one',
                              color: Color.fromARGB(255, 75, 74, 75)),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 0.12 * w,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Column(
                          children: const [
                            Text('مدير الإدارة',
                                style: TextStyle(fontFamily: 'one')),
                            Text(
                              ' عميد/ حسام رفعت',
                              style: TextStyle(
                                fontFamily: 'one',
                                //rgba(205, 186, 76, 1)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
