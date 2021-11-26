import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_details_controller.dart';

class OrderDetailsView extends GetView<OrderDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrderDetailsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OrderDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
