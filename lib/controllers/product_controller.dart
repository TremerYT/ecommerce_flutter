import 'package:get/get.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var products = [].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    isLoading(true);
    await Future.delayed(const Duration(seconds: 2));

    products.value = [
      {"name": "Nike Sneakers", "price": 4200, "image": "assets/key.jpeg"},
      {"name": "Apple Watch", "price": 19999, "image": "assets/mail.png"},
      {"name": "Leather Jacket", "price": 5999, "image": "assets/mailbox.jpeg"},
    ];

    isLoading(false);
  }
}
