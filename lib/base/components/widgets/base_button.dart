import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.buttonText, required this.isActive, required this.onPressed});
  final String buttonText;
  final bool isActive;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
      child: Center(
        child: Text(buttonText),
      ),
    );
  }
}
