import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Client extends GetxController {
  TextEditingController textEditingController = TextEditingController();
  void resetID() => textEditingController.text = '';

  RegExp regExp = RegExp("^[23]\\d{2}[01]\\d[0-3]\\d(([0-3][1-9])|88)\\d{5}\$");
  void sendID() async {
    if (regExp.hasMatch(textEditingController.text)) {
      try {
        await http.get(
          Uri.parse(
              "http://localhost:9090/soldiers/${textEditingController.text}"),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        );
      } catch (err) {
        return;
      }
    }
  }
}
