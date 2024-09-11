import 'package:adaptive_sizer/adaptive_sizer.dart';

extension type HeightWidth(double size) implements double {
  double get hgap => (size / 1.sp).h;

  double get wgap => (size / 1.sp).w;

  HeightWidth operator /(num denominator) {
    return HeightWidth(size / denominator);
  }

  HeightWidth operator *(num multiplier) {
    return HeightWidth(size * multiplier);
  }

  HeightWidth times(num multiplier) {
    return HeightWidth(size * multiplier);
  }
}

final dMargin1 = HeightWidth(8.sp);
double a = dMargin2;
final dMargin0125 = dMargin1 / 8;
final dMargin025 = dMargin1 / 4;
final dMargin05 = dMargin1 / 2;
final dMargin1025 = dMargin1.times(1.25);
final dMargin105 = dMargin1.times(1.5);
final dMargin1075 = dMargin1.times(1.75);
final dMargin2 = dMargin1.times(2);
final dMargin205 = dMargin1.times(2.5);
final dMargin2075 = dMargin1.times(2.75);
final dMargin3 = dMargin1.times(3);
final dMargin305 = dMargin1.times(3.5);
final dMargin4 = dMargin1.times(4);
final dMargin405 = dMargin1.times(4.5);
final dMargin4075 = dMargin1.times(4.75);
final dMargin5 = dMargin1.times(5);
final dMargin505 = dMargin1.times(5.5);
final dMargin5075 = dMargin1.times(5.75);
final dMargin6 = dMargin1.times(6);

final dBorderRadius = 8.r;

//login page
final dTextfieldHeight = 75.h;
final dLoginContainerHeightDesktop = 572.h;
final dLoginContainerWidthDesktop = 802.w;
