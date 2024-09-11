import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:test_flutter_app/base/components/components.dart';
import 'package:test_flutter_app/base/extension/extensions.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isChecked = useState<bool>(false);
    return Center(
      child: Column(
        children: [
          const Spacer(),
          Text('Welcome Back', style: context.text.headlineLarge),
          VerticalGap(dMargin1),
          Text('Login to continue', style: context.text.bodySmall),
          VerticalGap(dMargin1),
          Container(
            height: dLoginContainerHeightDesktop,
            width: dLoginContainerWidthDesktop,
            padding: EdgeInsets.symmetric(vertical: dMargin2, horizontal: dMargin5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(dBorderRadius),
              color: context.color.elevatedBackground,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Username'),
                VerticalGap(dMargin05),
                SizedBox(height: dTextfieldHeight, child: const TextField()),
                VerticalGap(dMargin2),
                const Text('Username'),
                VerticalGap(dMargin05),
                SizedBox(height: dTextfieldHeight, child: const TextField()),
                VerticalGap(dMargin2),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked.value,
                      onChanged: (_) {
                        isChecked.value = !isChecked.value;
                      },
                    ),
                    HorizontalGap(dMargin05),
                    const Spacer(),
                    Text(
                      'Forgot Password',
                      style: context.text.bodyLarge?.copyWith(decoration: TextDecoration.underline, color: context.color.primary),
                    ),
                  ],
                ),
                VerticalGap(dMargin1),
                Row(
                  children: [
                    const Divider(),
                    Text('OR', style: context.text.bodyLarge),
                    const Divider(),
                  ],
                ),
                VerticalGap(dMargin2),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: context.color.primary,
                    borderRadius: BorderRadius.circular(dBorderRadius),
                  ),
                  padding: EdgeInsets.all(dMargin05),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.facebook),
                      Text(
                        'Sign In Using Google',
                        style: context.text.titleSmall,
                      ),
                    ],
                  ),
                ),
                VerticalGap(dMargin1),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: context.color.primary,
                      borderRadius: BorderRadius.circular(dBorderRadius),
                    ),
                    padding: EdgeInsets.all(dMargin05),
                    child: Text(
                      'Sign In',
                      style: context.text.titleSmall,
                    ),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
