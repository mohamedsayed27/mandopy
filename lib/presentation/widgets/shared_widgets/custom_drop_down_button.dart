import 'package:flutter/material.dart';
import 'package:mandopy/core/app_theme/app_colors.dart';

class CustomDropDownButton extends StatefulWidget {
  final String? selectedValue;
  final List listItems;

  const CustomDropDownButton(
      {Key? key, required this.selectedValue, required this.listItems})
      : super(key: key);

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  late String selectedItem;
  late List listItems;

  @override
  void initState() {
    selectedItem = widget.listItems.first;
    listItems = widget.listItems;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: Text("title"),
      items: listItems
          .map((e) => DropdownMenuItem(
                value: e,
                child: Text(e),
              ))
          .toList(),
      onChanged: (value) {
        setState(() {
          selectedItem = value.toString();
        });
      },
      value: selectedItem,
      isExpanded: true,
      icon: const Icon(Icons.keyboard_arrow_down_rounded,color: AppColors.primaryColor,),
    );
  }
}
