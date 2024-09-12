import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:test_flutter_app/base/components/components.dart';
import 'package:test_flutter_app/base/extension/extensions.dart';
import 'package:test_flutter_app/features/patients/patients_list_page.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isChecked = useState<bool>(false);
    return Center(
      child: Column(
        children: [
          const Spacer(),
          Text('Welcome Back !', style: context.text.bodyLarge?.copyWith(fontSize: 90)),
          VerticalGap(dMargin1),
          Text('Login to continue', style: context.text.bodySmall),
          VerticalGap(dMargin1),
          Container(
            height: dLoginContainerHeightDesktop,
            width: dLoginContainerWidthDesktop,
            padding: EdgeInsets.only(bottom: dMargin2, top: dMargin5, left: dMargin5, right: dMargin5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(dBorderRadius),
              color: context.color.elevatedBackground,
            ),
            child: Column(
              children: [
                const Row(
                  children: [Text('Username'), Spacer()],
                ),
                VerticalGap(dMargin05),
                SizedBox(height: dTextfieldHeight, child: const AppTextField()),
                VerticalGap(dMargin2),
                const Row(
                  children: [Text('Password'), Spacer()],
                ),
                VerticalGap(dMargin05),
                SizedBox(
                    height: dTextfieldHeight,
                    child: const AppTextField(
                      isTextObscure: true,
                    )),
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
                    Text('Remember me', style: context.text.bodyMedium),
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
                    const Expanded(child: Divider()),
                    Text('  OR  ', style: context.text.bodyLarge),
                    const Expanded(child: Divider()),
                  ],
                ),
                VerticalGap(dMargin3),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: context.color.primary,
                    ),
                    borderRadius: BorderRadius.circular(dBorderRadius),
                  ),
                  padding: EdgeInsets.all(dMargin05),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.facebook),
                      HorizontalGap(dMargin1),
                      Text(
                        'Sign In Using Facebook',
                        style: context.text.titleSmall,
                      ),
                    ],
                  ),
                ),
                VerticalGap(dMargin2),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PatientsListPage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: context.color.primary,
                      borderRadius: BorderRadius.circular(dBorderRadius),
                    ),
                    padding: EdgeInsets.symmetric(vertical: dMargin05, horizontal: dMargin2),
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

class AppTextField extends StatelessWidget {
  const AppTextField({super.key, this.isTextObscure = false, this.prefixIcon = const SizedBox.shrink()});
  final bool isTextObscure;
  final Widget prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isTextObscure,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        filled: true,
        fillColor: context.color.scaffoldBackground,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: context.color.scaffoldBackground, width: 0.0),
        ),
      ),
    );
  }
}
