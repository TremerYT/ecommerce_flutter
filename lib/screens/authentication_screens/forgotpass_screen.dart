import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends GetView {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> containerDetails = [
      {
        "image": "assets/smartphone.png",
        "title": "Send via SMS",
        "color": Colors.blue.shade100,
      },
      {
        "image": "assets/mail.png",
        "title": "Send via Email",
        "color": Colors.red.shade100,
      },
      {
        "image": "assets/key.png",
        "title": "Send via 2FA",
        "color": Colors.green.shade100,
      },
    ];
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.fromLTRB(20, 20, 20, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xff000000),
                    size: 25,
                  ),
                  onTap: () => Get.back(),
                ),
              ),
              const SizedBox(height: 45),
              CustomText(
                text: 'Forgot Password',
                textColor: Color(0xff000000),
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 20),
              CustomText(
                text:
                    "Please Select the following options to reset your password",
                textColor: Color(0xff838383),
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 30),
              ...containerDetails.map(
                (detail) => Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: GestureDetector(
                    onTap: () { Get.toNamed("/resetPassword");},
                    child: Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xffc6c6c6)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: detail["color"],
                              ),
                              child: Image.asset(
                                detail["image"]!,
                                width: 20,
                                height: 20,
                              ),
                            ),
                            const SizedBox(width: 10),
                            CustomText(
                              text: detail["title"]!,
                              textColor: Color(0xff000000),
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color(0xffc3c3c3),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
