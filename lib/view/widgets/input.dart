import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  const Input({Key? key, required this.textEditingController})
      : super(key: key);
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Center(
        child: Form(
          child: TextFormField(
            autofocus: true,
            controller: textEditingController,
            maxLength: 14,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
            ],
            decoration: const InputDecoration(
              hintText: 'ادخل الرقم القوممي',
              hintTextDirection: TextDirection.rtl,
              border: InputBorder.none,
              counter: Offstage(),
              filled: true,
              fillColor: Color(0x07000000),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(width: 1, color: Colors.black),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 0.0),
              ),
            ),
            keyboardType: TextInputType.number,
            validator: (value) {
              String pattern =
                  "^[23]\\d{2}[01]\\d[0-3]\\d(([0-3][1-9])|88)\\d{5}\$";
              RegExp regExp = RegExp(pattern);
              if (value!.isEmpty) {
                return 'ID is required';
              } else if (!regExp.hasMatch(value)) {
                return "Invalid ID";
              } else {
                return null;
              }
            },
          ),
        ),
      ),
    );
  }
}
