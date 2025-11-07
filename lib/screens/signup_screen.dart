import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends GetView {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Padding(padding: const EdgeInsets.fromLTRB(20, 20, 20, 0)),
      ),
    );
  }
}
