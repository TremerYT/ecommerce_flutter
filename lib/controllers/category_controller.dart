import 'package:ecommerce/models/category_model.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController{
  var isLoading = true.obs;
  var categories = <Category>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchCategories();
  }

  void fetchCategories() async{
    isLoading.value = true;

    await Future.delayed(Duration(seconds: 5));

    categories.assignAll([
      Category(name: 'Shoes', image: 'assets/mail.png'),
      Category(name: 'Bags', image: 'assets/smartphone.jpeg'),
      Category(name: 'Shirts', image: 'assets/Mailbox.jpeg'),
      Category(name: 'Watches', image: 'assets/shopping_icon.jpeg'),
      Category(name: 'Hats', image: 'assets/mail.png'),
    ]);

    isLoading.value = false;
  }

}

