import 'package:flutter/material.dart';
import 'package:flutter_gate_server/model/soldier.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.soldier}) : super(key: key);
  final Soldier? soldier;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SizedBox(
      height: 0.65 * h,
      width: 0.65 * w,
      child: FittedBox(
        fit: BoxFit.contain,
        alignment: Alignment.centerRight,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 8, right: 18, top: 10, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'الاسم : ${soldier!.name}',
              ),
              Text(
                'الرقم القومي : ${soldier!.id}',
              ),
              Text(
                'رقم الشرطه : ${soldier!.policeNumber}',
              ),
              (soldier!.ratingNotes == '')
                  ? Text('التقيم السلوكي : ${soldier!.rating}')
                  : Text(
                      'التقيم السلوكي : ${soldier!.rating} (${soldier!.ratingNotes})'),
              Text(
                'الوحده : ${soldier!.unit}',
              ),
              Text(
                'دفع : ${soldier!.holidayGroup}',
              ),
              Text(
                'دفعة : ${soldier!.enrollment}',
              ),
              Text('رقم التلفون : ${soldier!.mobile}'),
              Text(
                'المؤهل : ${soldier!.education}',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
