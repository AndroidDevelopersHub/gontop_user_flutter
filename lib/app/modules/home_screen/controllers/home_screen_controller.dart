import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gontop_user/app/api/repository/home_repository.dart';

class HomeScreenController extends GetxController with SingleGetTickerProviderMixin{

  HomeRepository homeRepository = Get.find();


  TabController? tabController;
  TextEditingController searchController = TextEditingController();
  CarouselController carouselController = CarouselController();
  var currentSelected = 1;
  int selectedTabIndex = 0;


  late final AnimationController animationController = AnimationController(
      duration: const Duration(seconds: 20),
      vsync: this
  )..repeat(reverse: true);

  late final Animation<double> animation = Tween<double>(
      begin: 1.0,
      end: 1.5
  ).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.linear
  ));


  @override
  void onInit() {
    tabController = TabController(length: 4, vsync: this);

    callApi();

    super.onInit();


  }


  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }



  @override
  void onReady() {
    super.onReady();
  }

  void updateCurrentImageIndex(int index) {
    currentSelected = index + 1;
    update();
  }


  void callApi()async {

    print("Call Api called");

    final result = homeRepository.getAll();
    print(result);
  }
  
}
