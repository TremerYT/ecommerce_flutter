import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomForm extends StatefulWidget {
  final String name;
  final String label;

  const CustomForm({super.key, required this.name, required this.label});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: widget.name,
      obscureText: widget.name == "password" ? obscure : false,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        suffixIcon: widget.name == "password"
            ? IconButton(
                icon: Icon(obscure ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    obscure = !obscure;
                  });
                },
              )
            : null,
        hint: CustomText(
          text: widget.label,
          textColor: Color(0xff838383),
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
      validator: FormBuilderValidators.compose(verify(widget.name)),
    );
  }
}

List<FormFieldValidator<String>> verify(String name) {
  if (name == "fullName") {
    return [
      FormBuilderValidators.required(errorText: "First name is required"),
    ];
  } else if (name == "email") {
    return [
      FormBuilderValidators.required(errorText: "Email is required"),
      FormBuilderValidators.email(errorText: "Enter a valid email"),
    ];
  } else if (name == "phone") {
    return [
      FormBuilderValidators.required(errorText: "Phone number is required"),
      FormBuilderValidators.match(
        RegExp(r'^(?:\+254|0)?(7\d{8})$'),
        errorText: "Enter a valid Kenyan phone number",
      ),
    ];
  } else if (name == "password") {
    return [
      FormBuilderValidators.required(errorText: "Password is required"),
      FormBuilderValidators.password(),
    ];
  } else {
    return [FormBuilderValidators.required(errorText: "")];
  }
}
