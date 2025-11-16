import 'package:ecommerce/widgets/custom_button.dart';
import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
                "assets/authscreens_images/login_screen_pic.jpeg",
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
                        style: Theme.of(context).textTheme.displayLarge
                            ?.copyWith(
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
                      CustomButton(
                        title: "Sign in with email",
                        bgColor: Color(0xffffffff),
                        textColor: Colors.black87,
                        onPressed: () {
                          Get.offNamed("/signIn");
                        },
                        prefixIcon: FaIcon(FontAwesomeIcons.envelope, size: 17),
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        title: "Sign in with google",
                        onPressed: () {},
                        bgColor: Color(0xffffffff),
                        textColor: Colors.black87,
                        prefixIcon: FaIcon(FontAwesomeIcons.google, size: 17),
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        title: "Sign in with apple",
                        onPressed: () {},
                        bgColor: Color(0xff000000),
                        prefixIcon: FaIcon(
                          FontAwesomeIcons.apple,
                          size: 22,
                          color: Color(0xffffffff),
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
