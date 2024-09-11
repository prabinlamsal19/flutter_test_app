import 'package:flutter/material.dart';
import 'package:test_flutter_app/base/components/gaps/margin.dart';

class VerticalGap extends StatelessWidget {
  const VerticalGap(this._gap, {super.key});
  final HeightWidth _gap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: _gap.hgap);
  }
}
