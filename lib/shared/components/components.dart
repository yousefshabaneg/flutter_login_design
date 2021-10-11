import 'dart:ffi';

import 'package:first_flutter_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';

//<editor-fold desc='Default Button'>
Widget defaultButton({
  required String text,
  required VoidCallback onPressed,
  double height = 60,
  double width = double.infinity,
  Color background = Colors.red,
  Color textColor = Colors.white,
  double radius = 0.0,
  bool isUpperCase = true,
  double fontSize = 18,
}) =>
    Container(
      width: width,
      height: height,
      child: MaterialButton(
        onPressed: onPressed,
        height: height,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
    );
//</editor-fold>

//<editor-fold desc='Default FormField'>
Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType keyboardType,
  required String? Function(String?)? validate,
  VoidCallback? onPressed,
  required IconData prefixIcon,
  required String label,
  IconData? suffixIcon,
  bool isPassword = false,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon != null
            ? IconButton(
                onPressed: onPressed,
                icon: Icon(
                  suffixIcon,
                ),
              )
            : null,
      ),
      validator: validate,
    );
//</editor-fold>
