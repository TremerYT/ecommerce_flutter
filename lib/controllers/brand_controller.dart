import 'package:get/get.dart';

import '../models/brand_model.dart';

class BrandController extends GetxController {
  var isLoading = true.obs;
  var brands = <Brand>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchBrands();
  }

  void fetchBrands() async {
    isLoading.value = true;
    await Future.delayed(Duration(seconds: 5));

    brands.assignAll([
      Brand(name: "Adidas", image: "assets/brand_icons/adidas.jpg"),
      Brand(name: "Calvin Klein", image: "assets/brand_icons/calvin.jpg"),
      Brand(name: "Channel", image: "assets/brand_icons/channel.jpg"),
      Brand(name: "Gucci", image: "assets/brand_icons/gucci.jpg"),
      Brand(name: "Nike", image: "assets/brand_icons/nike.jpg"),
      Brand(name: "Zara", image: "assets/brand_icons/zara.jpg"),
      Brand(name: "Louis Vuitton", image: "assets/brand_icons/louis.jpg"),
    ]);
    isLoading.value = false;
  }
}
