import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared_widgets/custom_container.dart';
import '../shared_widgets/custom_drop_down_button.dart';

class OrderType extends StatefulWidget {
  const OrderType({Key? key}) : super(key: key);

  @override
  State<OrderType> createState() => _OrderTypeState();
}

class _OrderTypeState extends State<OrderType> {
  String? selectedValue;
  List<String> listItems = [
    'type1',
    'type2',
    'type3',
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
        padding: EdgeInsets.symmetric(vertical: 5.h),
        child: CustomDropDownButton(
          selectedValue: selectedValue,
          listItems: listItems,
        ),
      ),
    );
  }
}
