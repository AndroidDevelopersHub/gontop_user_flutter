import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gontop_user/app/utils/themes/colors.dart';
import 'package:gontop_user/app/utils/themes/dimens.dart';

class SelectableDropdown extends StatelessWidget {
  Function(String?)? onChange;
  List<String>? itemList;
  Color? backgroundColor;
  Color? textColor;
  bool? isDisable = false;

  SelectableDropdown({
    required this.itemList,
    required this.onChange,
    this.backgroundColor,
    this.textColor,
    this.isDisable,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Card(
        margin: EdgeInsets.zero,
        color: isDisable == true
            ? CustomColors.KAzureColor
            : backgroundColor ?? CustomColors.KUnselectedColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.radiusMin),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: DropdownButtonFormField(
                decoration: const InputDecoration.collapsed(hintText: ''),
                value: itemList?.first,
                style: TextStyle(
                    color: isDisable == true
                        ? Colors.grey.shade400
                        : textColor ?? CustomColors.KLiteBlackColor),
                icon: Icon(Icons.keyboard_arrow_down,
                    color: isDisable == true
                        ? Colors.grey.shade400
                        : textColor ?? CustomColors.KLiteBlackColor),
                selectedItemBuilder: (BuildContext context) {
                  return itemList!.map<Widget>((String item) {
                    return DropdownMenuItem(value: item, child: Text(item));
                  }).toList();
                },
                items: itemList?.map((String items) {
                  return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                        style: TextStyle(color: CustomColors.KLiteBlackColor),
                      ));
                }).toList(),
                onChanged: isDisable == true ? null : onChange),
          ),
        ),
      ),
    );
  }
}
