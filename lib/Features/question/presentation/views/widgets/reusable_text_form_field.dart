import 'package:flutter/material.dart';
import 'package:heart_rate/Core/constance/all_colors.dart';

class ReusableTextFieldContainer extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final Widget? prefixIcon;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final TextInputType inputType;
  const ReusableTextFieldContainer({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.onChanged,
    this.validator,
    this.prefixIcon,
    required this.inputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1), // Set shadow color
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 1), // Set shadow offset
          ),
        ],
      ),
      child: TextFormField(
        style: const TextStyle(
          color: Colors.white,
        ),
        maxLines: 10,
        minLines: 2,
        controller: controller,
        cursorColor: AllColors.primaryColor,
        onChanged: onChanged,
        validator: validator,
        keyboardType: inputType,
        decoration: InputDecoration(
          fillColor: Colors.grey.shade100,
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffF7F7F4),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffF7F7F4),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
