import 'package:flutter/material.dart';

class CustomTextForm extends StatefulWidget {
  final TextEditingController? controller;
  final String labelText;
  final bool obscureText;

  const CustomTextForm({super.key, required this.controller, required this.labelText, required this.obscureText});

  @override
  State<CustomTextForm> createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 12),
      child: TextFormField(
        obscureText: widget.obscureText,
        controller: widget.controller,
        decoration: InputDecoration(
            labelText: widget.labelText,
            contentPadding: const EdgeInsets.all(8),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8)
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.blue,
                  width: 1
              ),
            ),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.blue,
                    width:2
                )
            )
        ),
      ),
    );
  }
}
