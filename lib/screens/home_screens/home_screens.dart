import 'package:badges/badges.dart' as badges;
import 'package:ecommerce/controllers/category_controller.dart';
import 'package:ecommerce/controllers/home_controller.dart';
import 'package:ecommerce/widgets/custom_shimmer.dart';
import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatelessWidget {
  final homeController = Get.put(HomeController());
  final categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0,
        title: CustomText(
          text: "Nirvana",
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
            fontFamily: GoogleFonts.pacifico().fontFamily,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(top: 3, end: 3),
              badgeContent: Text(
                '3',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.email, color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(top: 5, end: 5),
              badgeContent: Text(
                '5',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: CustomText(
                  text: "View all",
                  textColor: Colors.orangeAccent,
                ),
              ),
            ),
            Obx(() {
              if (categoryController.isLoading.value) {
                return CustomShimmer(
                  outerHeight: 100,
                  containerHeight: 70,
                  containerWidth: 70,
                  boxShape: BoxShape.circle,
                );
              } else {
                return buildCategoryList();
              }
            }),
            const SizedBox(height: 20),
            SizedBox(
              height: 180,
              child: PageView.builder(
                controller: homeController.bannerController,
                onPageChanged: homeController.onBannerChanged,
                itemCount: homeController.banners.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        homeController.banners[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCategoryList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 100,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final category = categoryController.categories[index];
            return Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.orangeAccent, width: 2),
                    image: DecorationImage(
                      image: AssetImage(category.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                CustomText(text: category.name),
              ],
            );
          },
          separatorBuilder: (_, __) => const SizedBox(width: 15),
          itemCount: categoryController.categories.length,
        ),
      ),
    );
  }

  Widget buildBannerIndicator() {
    return Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(3, (index) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 300),
            margin: EdgeInsets.all(4),
            width: homeController.currentBanner.value == index ? 18 : 6,
            height: 6,
            decoration: BoxDecoration(
              color: homeController.currentBanner.value == index
                  ? Colors.orange
                  : Colors.grey,
              borderRadius: BorderRadius.circular(4),
            ),
          );
        }),
      );
    });
  }
}
