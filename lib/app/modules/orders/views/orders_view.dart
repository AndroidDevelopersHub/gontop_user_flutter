import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gontop_user/app/modules/components/custom_textwidget.dart';
import 'package:gontop_user/app/utils/helper/utility.dart';
import 'package:gontop_user/app/utils/themes/colors.dart';
import 'package:gontop_user/app/utils/themes/dimens.dart';

import '../controllers/orders_controller.dart';

class OrdersView extends GetView<OrdersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: 350,
          width: getMaxWidth(context),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 1.2],
                  colors: [Colors.red, Colors.white])),
          child: Padding(
            padding: const EdgeInsets.all(Dimens.basePaddingLarge),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
                CText(
                  text: 'My Balance',
                  textColor: Colors.white,
                ),
                CText(
                  text: '10,000.00 BDT',
                  textColor: Colors.white,
                  textSize: Dimens.titleLarge,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconTextButton(
                      text: 'Deposite',
                    ),
                    IconTextButton(
                      text: 'Transfer',
                    ),
                    IconTextButton(
                      text: 'History',
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          width: getMaxWidth(context),
          height: getMaxHeight(context),
          margin: EdgeInsets.only(top: 195),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimens.radiusLarge),
                  topRight: Radius.circular(Dimens.radiusLarge))),
          child: ListView.builder(
              padding: EdgeInsets.only(top: Dimens.basePadding),
              itemCount: 15,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: Dimens.basePaddingLarge,horizontal: Dimens.basePadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CText(text: "Order ID : 9825", textSize: Dimens.title),
                              Spacer(),
                              CText(text: "Completed", textSize: Dimens.titleMid,textColor: Colors.grey,),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,size: 15,)


                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              CText(text: "Payment method: bKash", textSize: Dimens.titleMinMid, ),
                              Spacer(),
                              CText(text: "12-11-2021  13:24:34",textSize: Dimens.titleMinMid ),
                            ],
                          ),
                          SizedBox(height: 4),
                          CText(text: "Agent name: Saju", textSize: Dimens.titleMinMid, ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              CText(text: "Transaction ID: 7sD912QR", textSize: Dimens.titleMinMid),
                              Spacer(),
                              CText(text: "2000 BDT",textSize: Dimens.title, textColor: CustomColors.KGreenBackGround, ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    DashSeparator()

                  ],
                );
              }),
        )
      ],
    ));
  }
}

class IconTextButton extends StatelessWidget {
  String? text;

  IconTextButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimens.radiusMid)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.home,
            color: Colors.black45,
            size: 30,
          ),
          SizedBox(height: 5),
          CText(text: text)
        ],
      ),
    );
  }
}

class DashSeparator extends StatelessWidget {
  final double height;
  final Color color;

  DashSeparator({this.height = .5, this.color = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = 10.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
