import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.hintText,
    required this.onSave,
    required this.validator,
  }) : super(key: key);
  final String hintText;
  final FormFieldSetter onSave;
  final FormFieldValidator validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: TextFormField(
        onSaved: onSave,
        validator: validator,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFF7F7F7),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xFF838391),
          ),
        ),
      ),
    );
  }
}
