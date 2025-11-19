// import 'package:ecommerce/widgets/custom_text.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../widgets/custom_tile.dart';
//
// class ForgotPasswordScreen extends GetView {
//   const ForgotPasswordScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final List<Map<String, dynamic>> options = [
//       {
//         "image": "assets/authscreens_images/smartphone.png",
//         "title": "Send via SMS",
//         "color": Colors.blue.shade100,
//       },
//       {
//         "image": "assets/authscreens_images/mail.png",
//         "title": "Send via Email",
//         "color": Colors.red.shade100,
//       },
//       {
//         "image": "assets/authscreens_images/key.png",
//         "title": "Send via 2FA",
//         "color": Colors.green.shade100,
//       },
//     ];
//     return Scaffold(
//       backgroundColor: Color(0xffffffff),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               buildBackButton(),
//               const SizedBox(height: 40),
//               CustomText(
//                 text: 'Forgot Password',
//                 style: Theme.of(context).textTheme.displayMedium,
//               ),
//               const SizedBox(height: 20),
//               CustomText(
//                 text:
//                     "Please Select the following options to reset your password",
//                 style: Theme.of(context).textTheme.bodyMedium,
//               ),
//               const SizedBox(height: 30),
//               ...options.map(
//                     (item) => Padding(
//                   padding: const EdgeInsets.only(bottom: 20),
//                   child: ResetOptionTile(
//                     image: item["image"],
//                     title: item["title"],
//                     color: item["color"],
//                     onTap: () => Get.toNamed(
//                       '/resetPassword',
//                       arguments: item["title"],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget buildBackButton() {
//     return Align(
//       alignment: Alignment.centerLeft,
//       child: GestureDetector(
//         child: Icon(
//           Icons.arrow_back_ios_new,
//           color: Color(0xff000000),
//           size: 25,
//         ),
//         onTap: () => Get.back(),
//       ),
//     );
//   }
// }
