import 'package:flutter/material.dart';
import 'package:test_flutter_app/base/extension/context_extension.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: context.color.error,
    );
  }
}
