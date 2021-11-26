import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_deposit_controller.dart';

class AddDepositView extends GetView<AddDepositController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddDepositView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddDepositView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
