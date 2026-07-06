import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

class ProductDetailsTitle extends StatelessWidget {
  const ProductDetailsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Product Details',
      style: TextStyle(
        color: kprimaryColor,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
