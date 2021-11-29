import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/anouncement_controller.dart';

class AnouncementView extends GetView<AnouncementController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnouncementView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AnouncementView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
