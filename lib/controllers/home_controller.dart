import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late PageController bannerController;
  var currentBanner = 0.obs;
  var isLoading = true.obs;
  Timer? bannerTimer;

  final List<String> banners = [
    'assets/banner_images/banner1.jpg',
    'assets/banner_images/banner2.jpg',
    'assets/banner_images/banner3.jpg',
  ];

  @override
  Future<void> onInit() async {
    super.onInit();
    bannerController = PageController();
    isLoading.value = true;
    await Future.delayed(Duration(seconds: 5));
    isLoading.value = false;

    bannerTimer = Timer.periodic(Duration(seconds: 3), (_) {
      if (bannerController.hasClients) {
        int nextPage = bannerController.page!.round() + 1;

        if (nextPage >= banners.length) {
          nextPage = 0;
        }

        bannerController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  void onBannerChanged(int index) {
    currentBanner.value = index;
  }
}
