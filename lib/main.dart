import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gate_server/view/soldierpage.dart';
import 'package:flutter_gate_server/view/startingpage.dart';
import 'package:get/get.dart';
import 'controller/server.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await DesktopWindow.setFullScreen(true);
  await DesktopWindow.setMinWindowSize(const Size(1280, 720));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Server controller = Get.put(Server());

    controller.startserver();

    return Obx(() => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: (controller.soldier.value == null)
            ? const StartingPage()
            : Obx(() => SoldierPage(
                  soldier: controller.soldier.value,
                ))));
  }
}
