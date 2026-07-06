import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Advanced health monitoring with body composition analysis. Wear OS powered by Samsung. Sapphire Crystal glass. Up to 40 hours battery life.',
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: ktextColor,
      ),
    );
  }
}
