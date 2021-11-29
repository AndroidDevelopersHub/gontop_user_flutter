import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) => Scaffold(
          bottomNavigationBar: BottomNavigationBar(

            type: BottomNavigationBarType.fixed,
            currentIndex: controller.selectedIndex,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            onTap: (index) => controller.onTabChange(index),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Orders"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home)
                  , label: "Wallet"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Anouncement"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Profile"),
            ],
          ),
          body: IndexedStack(
            index: controller.selectedIndex,
            children: controller.sceenList,
          ),
        ));
  }
}
