import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPageIndex});
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => Padding(
          padding: EdgeInsets.only(right: 6.w),
          child: CustomDotIndicator(isActive: index == currentPageIndex),
        ),
      ),
    );
  }
}
