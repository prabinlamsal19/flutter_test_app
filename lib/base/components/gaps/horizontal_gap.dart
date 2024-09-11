import 'package:flutter/material.dart';
import 'package:test_flutter_app/base/components/gaps/margin.dart';

class HorizontalGap extends StatelessWidget {
  const HorizontalGap(this._gap, {super.key});
  final HeightWidth _gap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: _gap.wgap);
  }
}
