import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomInput extends StatelessWidget {
  final String? hintText;
  final TextInputType? keyboardType;
  final bool? isPassword;
  // fi
  const CustomInput({
    super.key,
    this.hintText,
    this.keyboardType,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: isPassword!,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ),
    );
  }
}
