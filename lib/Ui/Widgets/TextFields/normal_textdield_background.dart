
import 'package:flutter/material.dart';

import '../../../Constants/Colors/app_colors.dart';

class MaterialTextFieldBackground extends StatelessWidget {
  final String lable;
  final String hintText;
  final bool readOnly;
  MaterialTextFieldBackground({required this.lable,required this.controller, required this.hintText,required this.readOnly});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please fillup';
        }
        return null;
      },

      readOnly: readOnly,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: Color(0xFFF5F7F8),
        filled: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 6),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color:Color(0xFFF5F7F8), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: Colors.lightBlueAccent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
