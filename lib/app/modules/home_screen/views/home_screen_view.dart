import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_screen_controller.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomeScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
