import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/category_details_controller.dart';

class CategoryDetailsView extends GetView<CategoryDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CategoryDetailsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CategoryDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
