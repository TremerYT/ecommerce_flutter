import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginScreen extends GetView {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Stack(
        children: [
          Image.asset("assets/login_screen_pic.jpeg", fit: BoxFit.contain),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 455,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.95),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Welcome to Nirvana",
                    style: GoogleFonts.pacifico(
                      color: Color(0xff000000),
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  CustomText(
                    text: "One best app for all Your needs",
                    textColor: Color(0xff000000),
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  SignInButtonBuilder(
                    text: 'Continue with Email',
                    textColor: Color(0xff000000),
                    textStyle: TextStyle(fontSize: 17),
                    icon: Icons.email,
                    iconColor: Color(0xff000000),
                    onPressed: () {
                      Get.offNamed("/signIn");
                    },
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(50),
                    ),
                    backgroundColor: Colors.white,
                    elevation: 0.1,
                  ),
                  const SizedBox(height: 20),
                  SignInButton(
                    Buttons.google,
                    text: "Continue with Google",
                    textStyle: TextStyle(
                      fontSize: 17,
                      color: Color(0xff000000),
                    ),
                    onPressed: () {},
                    padding: EdgeInsets.all(5),
                    elevation: 0.1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(50),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SignInButton(
                    Buttons.appleDark,
                    text: "Continue with Apple",
                    textStyle: TextStyle(
                      fontSize: 17,
                      color: Color(0xffffffff),
                    ),
                    onPressed: () {},
                    padding: EdgeInsets.all(15),
                    elevation: 0.1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(50),
                    ),
                  ),
                  const SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Don't have an account? ",
                        textColor: Color(0xff7c7c7c),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                      InkWell(
                        onTap: () {
                          Get.offNamed('/signUp');
                        },
                        child: CustomText(
                          text: "Sign up",
                          textColor: Colors.orange,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
