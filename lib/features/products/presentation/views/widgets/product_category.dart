import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

class ProductCategory extends StatelessWidget {
  const ProductCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Accessories',
      style: TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w500,
        color: ktextColor2,
      ),
    );
  }
}
