import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gontop_user/app/utils/helper/constants.dart';
import 'package:gontop_user/app/utils/helper/utility.dart';
import 'package:gontop_user/app/utils/themes/dimens.dart';

import '../controllers/product_list_controller.dart';

class ProductListView extends GetView<ProductListController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductListController>(
        builder: (controller) => Scaffold(
                body: Stack(
              children: [
                controller.imageUrl != null
                    ? SizedBox(
                        height: 200,
                        child: Image.network(
                          controller.imageUrl!,
                          fit: BoxFit.cover,
                          width: getMaxWidth(context),
                        ),
                      )
                    : SizedBox(),
                Padding(
                  padding: const EdgeInsets.only(top: 150.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Card(
                      elevation: 1,
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimens.radiusLarge),
                            topRight: Radius.circular(Dimens.radiusLarge)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: Dimens.basePadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("data"),
                            Expanded(
                                child: Container(
                              color: Colors.white,
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}
