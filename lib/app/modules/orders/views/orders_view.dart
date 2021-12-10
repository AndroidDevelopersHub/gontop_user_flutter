import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gontop_user/app/modules/components/custom_textwidget.dart';
import 'package:gontop_user/app/utils/helper/utility.dart';
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
          margin: EdgeInsets.only(top: 215),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimens.radiusLarge),
                  topRight: Radius.circular(Dimens.radiusLarge))),
          child: Padding(
            padding: const EdgeInsets.all(Dimens.basePadding),
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 15,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8, bottom: 2),
                    child: Column(
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
                        )
                      ],
                    )
                  );
                }),
          ),
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
      height: 90,
      width: 90,
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
