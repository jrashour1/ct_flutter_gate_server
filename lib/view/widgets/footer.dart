import 'package:flutter/material.dart';
// import 'package:flutter_gate_server/controller/server.dart';
// import 'package:get/get.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Server controller = Get.find();
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SizedBox(
      height: 0.15 * h,
      width: 0.65 * w,
      child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 0.1 * w,
              child: const FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  ' مدير الإدارة\nعميد/ حسام رفعت ',
                  style: TextStyle(fontFamily: 'one', fontSize: 10),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // Obx(() => Text(
            //       controller.gTimer.value.toString(),
            //       style: TextStyle(color: Colors.blue.shade900),
            //     )),
            SizedBox(
              width: 0.1 * w,
              child: const FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  'الإدارة العامة لمرور القاهرة\n إدارة المجندين والتدريب',
                  style: TextStyle(fontFamily: 'one', fontSize: 10),
                  textAlign: TextAlign.right,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
