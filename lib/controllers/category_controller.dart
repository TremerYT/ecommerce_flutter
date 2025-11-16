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
      Category(name: 'Furniture', image: 'assets/category_icons/furniture.png'),
      Category(name: 'Clothing', image: 'assets/category_icons/clothing.png'),
      Category(name: 'Bags', image: 'assets/category_icons/bags.png'),
      Category(name: 'Food', image: 'assets/category_icons/food.png'),
      Category(name: 'Electronics', image: 'assets/category_icons/gadgets.png'),
      Category(name: 'Cosmetics', image: 'assets/category_icons/makeup.png'),
    ]);

    isLoading.value = false;
  }

}

