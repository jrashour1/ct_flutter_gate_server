import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key, required this.notes, required this.photo})
      : super(key: key);
  final String notes;
  final String photo;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
          border: Border(left: BorderSide(width: 10, color: Colors.black))),
      width: 0.35 * w,
      child: Column(
        children: [
          Image.network(
            photo,
            width: 0.35 * w,
            height: 0.7 * h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              width: 0.35 * w,
              height: 0.3 * h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                children: [
                  const Text(
                    'الملاحظات',
                    style: TextStyle(fontSize: 35, color: Colors.red),
                  ),
                  Text(
                    (notes == '' ? 'لا يوجد ملاحظات' : notes),
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
