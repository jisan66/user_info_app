import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonText;
  final double width;

  const CustomButton(
      {super.key, required this.onTap, required this.buttonText, required this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: MaterialButton(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          textColor: Colors.white,
          enableFeedback: true,
          color: Colors.blue,
          height: 40,
          minWidth: width,
          elevation: 2,
          onPressed: onTap,
          child: Text(buttonText)),
    );
  }
}
