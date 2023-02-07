import 'package:flutter/material.dart';

BoxDecoration gradiantDecoration = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [Colors.grey.shade700, Colors.white]));

BoxDecoration gradiantDecorationRed = const BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
      Color.fromARGB(255, 255, 0, 0),
      Color.fromARGB(255, 85, 85, 85)
    ]));
