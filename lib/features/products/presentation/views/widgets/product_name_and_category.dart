import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

class ProductNameAndCategory extends StatelessWidget {
  const ProductNameAndCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Laptops',
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: ktextColor,
          ),
        ),
        Text(
          'MacBook Pro 14',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: kprimaryColor,
          ),
        ),
      ],
    );
  }
}
