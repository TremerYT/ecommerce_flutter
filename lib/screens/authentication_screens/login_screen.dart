import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/gestures.dart';
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
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Image.asset(
                "assets/login_screen_pic.jpeg",
                fit: BoxFit.contain,
              ),
            ),
            Expanded(
              flex: 6,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomText(
                        text: "Welcome to Nirvana",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          fontFamily: GoogleFonts.pacifico().fontFamily,
                          fontSize: 35,
                        ),
                      ),
                      const SizedBox(height: 10),
                      CustomText(
                        text: "One best app for all Your needs",
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
                          borderRadius: BorderRadius.circular(50),
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
                          borderRadius: BorderRadius.circular(50),
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
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      const SizedBox(height: 60),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            style: GoogleFonts.poppins(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: "Don't have an account? ",
                                style: TextStyle(color: Color(0xff7c7c7c)),
                              ),
                              TextSpan(
                                text: 'Sign up',
                                style: TextStyle(color: Colors.orange),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.offNamed('/signUp');
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
