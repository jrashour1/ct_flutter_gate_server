import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: 0.2 * h,
      width: 0.65 * w,
      child: Image.asset('lib/assets/cairotrafic.png'),
    );
  }
}
