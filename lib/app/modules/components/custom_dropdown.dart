import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gontop_user/app/utils/themes/colors.dart';
import 'package:gontop_user/app/utils/themes/dimens.dart';

class CDropdown extends StatelessWidget {
  Function(String?)? onChange;
  List<String>? itemList;
  Color? backgroundColor;
  Color? textColor;
  bool? isDisable = false;
  String? hint;

  CDropdown({
    required this.itemList,
    required this.onChange,
    this.backgroundColor,
    this.textColor,
    this.isDisable,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        hint: Text(
          hint ?? "",
          style: TextStyle(
              color: CustomColors.KLiteBlackColor, fontSize: Dimens.title),
        ),
        style: TextStyle(color: textColor ?? CustomColors.KLiteBlackColor),
        icon: Icon(Icons.filter_alt_outlined,
            color: CustomColors.KAlgaeGreenBackGround),
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
                style: TextStyle(
                    color: CustomColors.KDarkBlackColor,
                    fontWeight: FontWeight.w600),
              ));
        }).toList(),
        onChanged: onChange);
  }
}
