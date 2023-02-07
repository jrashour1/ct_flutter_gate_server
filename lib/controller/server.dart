// ignore_for_file: unnecessary_cast

import 'dart:io';
import 'package:flutter_gate_server/model/soldier.dart';
import 'package:get/get.dart';
import 'dart:convert' show jsonDecode, utf8;
class Server extends GetxController {
  final Rx<Soldier?> soldier = (null as Soldier?).obs;

  startserver() async {
    var server = await HttpServer.bind(InternetAddress.anyIPv6, 3000,
        shared: false, backlog: 10);
    await server.forEach((HttpRequest request) {
      utf8.decodeStream(request).then((data) {
        if (data != '') {
          var map = jsonDecode(data);
          soldier.value == null;
          soldier.value = Soldier.fromJson(map);
        }
        request.response.write(soldier.value);
        request.response.close();
      });//END
    });
  }
}
