import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared_widgets/custom_container.dart';
import '../shared_widgets/custom_drop_down_button.dart';

class OrderCount extends StatefulWidget {
  const OrderCount({Key? key}) : super(key: key);

  @override
  State<OrderCount> createState() => _OrderCountState();
}

class _OrderCountState extends State<OrderCount> {
  String? selectedValue;
  List<String> listItems = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
  ];

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 60.h,
      horizontalPadding: 20.w,
      verticalPadding: 0,
      child: Container(
        height: 50.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: 5.h,
        ),
        child: CustomDropDownButton(
          selectedValue: selectedValue,
          listItems: listItems,
        ),
      ),
    );
  }
}
