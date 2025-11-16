import 'package:badges/badges.dart' as badges;
import 'package:ecommerce/controllers/category_controller.dart';
import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends GetView<CategoryController> {
  const HomeScreen({super.key});

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
              if (controller.isLoading.value) {
                return buildCategoryShimmer();
              } else {
                return buildCategoryList();
              }
            }),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildCategoryShimmer() {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemCount: 6,
      ),
    );
  }

  Widget buildCategoryList() {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final category = controller.categories[index];
          return Column(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(category.image))
                ),
              )
            ],
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemCount: controller.categories.length,
      ),
    );
  }
}
