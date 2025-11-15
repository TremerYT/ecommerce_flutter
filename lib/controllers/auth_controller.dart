import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AuthController {
  List<Map> signInFormProperties = [
    {
      "name": "email",
      "label": "Email"
    },
    {
      "name": "password",
      "label": "Password"
    }
  ];

  List<Map> signUpFormProperties = [
    {
      "name": "fullName",
      "label": "Full Name"
    },
    {
      "name": "email",
      "label": "Email"
    },
    {
      "name": "password",
      "label": "Password"
    },
    {
      "name": "confirmPassword",
      "label": "Confirm Password"
    }
  ];

  final signInKey = GlobalKey<FormBuilderState>();
  final signUpKey = GlobalKey<FormBuilderState>();
  final resetKey = GlobalKey<FormBuilderState>();

  void signInValidator() {
    signInKey.currentState!.saveAndValidate();
  }

  void signUpValidator() {
    signUpKey.currentState!.saveAndValidate();
  }

  void resetValidator () {
    resetKey.currentState!.saveAndValidate();
  }

}
