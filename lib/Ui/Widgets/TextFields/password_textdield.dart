
import 'package:flutter/material.dart';



class MaterialTextFieldPassword extends StatefulWidget {


  final String lable;
  final String hintText;

  MaterialTextFieldPassword({required this.lable,required this.controller, required this.hintText});
  TextEditingController controller = TextEditingController();

  @override
  State<MaterialTextFieldPassword> createState() => _MaterialTextFieldState();
}

class _MaterialTextFieldState extends State<MaterialTextFieldPassword> {
  bool _passwordVisible = true;

  @override
  void initState() {
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please fillup';
        }
        return null;
      },
      obscureText: _passwordVisible,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,

        suffixIcon: IconButton(
          icon: Icon(
            // Based on passwordVisible state choose the icon
            _passwordVisible
                ?Icons.visibility_off
                : Icons.visibility,
            color:Color(0XFFC7C7C7),
          ),
          onPressed: () {
            // Update the state i.e. toogle the state of passwordVisible variable
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
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
