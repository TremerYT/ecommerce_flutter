
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomForm extends StatefulWidget {
  final String name;
  final String label;
  final TextInputType? keyboardType;
  final bool isPassword;

  const CustomForm({
    super.key,
    required this.name,
    required this.label,
    this.keyboardType,
    this.isPassword = false,
  });

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: widget.name,
      obscureText: widget.isPassword ? obscure : false,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: const TextStyle(color: Color(0xff838383)),
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
