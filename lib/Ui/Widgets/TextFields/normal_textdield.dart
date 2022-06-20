
import 'package:flutter/material.dart';



class MaterialTextField extends StatelessWidget {
  final String lable;
  final String hintText;
  final bool readOnly;
  MaterialTextField({required this.lable,required this.controller, required this.hintText,required this.readOnly});
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

        contentPadding:
        EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(0.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color:Color(0XFFC7C7C7), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(0.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: Colors.lightBlueAccent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(0.0)),
        ),
      ),
    );
  }
}
