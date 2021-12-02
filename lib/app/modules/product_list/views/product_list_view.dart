import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gontop_user/app/modules/components/custom_dropdown.dart';
import 'package:gontop_user/app/utils/helper/constants.dart';
import 'package:gontop_user/app/utils/helper/utility.dart';
import 'package:gontop_user/app/utils/themes/colors.dart';
import 'package:gontop_user/app/utils/themes/dimens.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as Math;

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
                      color: CustomColors.KLiteWhite,
                      elevation: 1,
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimens.radiusLarge),
                            topRight: Radius.circular(Dimens.radiusLarge)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: Dimens.basePaddingLarge),
                            child: Text(
                              "Category",
                              style: GoogleFonts.poppins(
                                  fontSize: Dimens.titleMid,
                                  color: CustomColors.KLiteBlackColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: Dimens.basePaddingLarge),
                            child: CDropdown(
                              itemList: controller.categoryItems,
                              onChange: (category) =>
                                  controller.onCategorySelect(category),
                              hint: 'Choose Category',
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: Dimens.basePadding),
                              child: ListView.builder(
                                  itemCount: 25,
                                  shrinkWrap: true,
                                  physics: const BouncingScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Card(
                                        // color: controller
                                        //     .selectedPackage ==
                                        //     index
                                        //     ? CustomColors.KGreenTrans : Colors.white,
                                        margin: EdgeInsets.zero,
                                        elevation: 1,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(Dimens.radiusMin),
                                          ),
                                          side: controller
                                              .selectedPackage ==
                                              index
                                              ?BorderSide(color: Colors.green.shade400, width: .5):BorderSide.none
                                        ),
                                        child: InkWell(
                                          onTap: () =>
                                              controller.onSelectPackage(index),
                                          child: Stack(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15,
                                                    left: 15,
                                                    right: 15,
                                                    bottom: 5),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      Math.Random()
                                                              .nextInt(200)
                                                              .toString() +
                                                          " UC",
                                                      style: GoogleFonts.poppins(
                                                          fontSize:
                                                              Dimens.titleLarge,
                                                          color: CustomColors
                                                              .KDarkBlackColor,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    SizedBox(height: 2),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "${Math.Random().nextInt(300)} BDT",
                                                          style: GoogleFonts.poppins(
                                                              fontSize: Dimens
                                                                  .titleMid,
                                                              color: CustomColors
                                                                  .KPrimaryRedColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                        Icon(
                                                          Icons.arrow_right_alt,
                                                          size: 40,
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: controller
                                                                  .selectedPackage ==
                                                              index
                                                          ? 15
                                                          : 0,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Positioned(
                                                right: 0,
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        color: index.isEven
                                                            ? CustomColors
                                                                .KGreenBackGround
                                                            : CustomColors
                                                                .KPrimaryRedColor,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft: const Radius
                                                                  .circular(
                                                              Dimens
                                                                  .radiusLarge),
                                                          topRight: const Radius
                                                                  .circular(
                                                              Dimens.radiusMin),
                                                        )),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 15,
                                                          vertical: 6),
                                                      child: Text(
                                                        index.isEven
                                                            ? "Open"
                                                            : "Close",
                                                        style:
                                                            GoogleFonts.poppins(
                                                          fontSize: Dimens
                                                              .titleMinMid,
                                                          color: CustomColors
                                                              .KWhite,
                                                        ),
                                                      ),
                                                    )),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}
