import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gontop_user/app/modules/components/elevated_textfield.dart';
import 'package:gontop_user/app/modules/components/item_game.dart';
import 'package:gontop_user/app/utils/helper/constants.dart';
import 'package:gontop_user/app/utils/helper/utility.dart';
import 'package:gontop_user/app/utils/themes/colors.dart';
import 'package:gontop_user/app/utils/themes/dimens.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_screen_controller.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
        builder: (controller) => Scaffold(
                body: Column(
              children: [
                Container(
                  height: 270,
                  child: Stack(
                    children: [
                      CarouselSlider(
                        carouselController: controller.carouselController,
                        options: CarouselOptions(
                            height: 250,
                            enlargeCenterPage: true,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            autoPlay: false,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 5000),
                            viewportFraction: 1,
                            onPageChanged: (index, reason) =>
                                controller.updateCurrentImageIndex(index)),
                        items: bannerList.map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  child: ScaleTransition(
                                scale: controller.animation,
                                child: Image.network(
                                  i,
                                  fit: BoxFit.fitHeight,
                                ),
                              ));
                            },
                          );
                        }).toList(),
                      ),
                      Positioned.fill(
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                                icon: const Icon(
                                  Icons.chevron_left,
                                  size: 35,
                                  color: Colors.white,
                                ),
                                onPressed: () => controller.carouselController
                                    .previousPage())),
                      ),
                      Positioned.fill(
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                icon: const Icon(
                                  Icons.chevron_right,
                                  size: 35,
                                  color: Colors.white,
                                ),
                                onPressed: () =>
                                    controller.carouselController.nextPage())),
                      ),
                      Positioned.fill(
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: CElevatedTextField(
                              controller: controller.searchController,
                              prefixIcon: Icon(Icons.search),
                              textInputType: TextInputType.text,
                              hintText: 'Search',
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: getMaxWidth(context),
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimens.radiusMid),
                        bottomLeft: Radius.circular(Dimens.radiusMid),
                      )),
                  child: Center(
                    child: TabBar(
                      isScrollable: true,
                      unselectedLabelColor: CustomColors.KLiteBlackColor,
                      labelColor: Colors.red,
                      controller: controller.tabController,
                      labelStyle: GoogleFonts.poppins(
                          fontSize: Dimens.titleMinMid,
                          color: CustomColors.KPrimaryRedColor,
                          fontWeight: FontWeight.w600),
                      unselectedLabelStyle: GoogleFonts.poppins(
                        fontSize: Dimens.titleMinMid,
                      ),
                      indicatorPadding: EdgeInsets.symmetric(vertical: 5),
                      indicator: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                            Radius.circular(Dimens.radiusCircular)),
                      ),
                      tabs: [
                        Tab(
                          text: 'All',
                        ),
                        Tab(
                          text: 'Games',
                        ),
                        Tab(
                          text: 'Gifts Card',
                        ),
                        Tab(
                          text: 'Flash Sale',
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: TabBarView(
                  controller: controller.tabController,
                  children: [
                    GridView.builder(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: .8),
                        itemCount: 15,
                        itemBuilder: (BuildContext context, int index) =>
                            GameItem(
                              onItemClick: () => controller.onItemClick(),
                            )),
                    GridView.builder(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: .8),
                        itemCount: 15,
                        itemBuilder: (BuildContext context, int index) =>
                            GameItem(
                              onItemClick: () => controller.onItemClick(),
                            )),
                    Text("hh"),
                    Text("hh"),
                  ],
                ))
              ],
            )));
  }
}
