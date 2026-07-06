import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

class ProductTitleAndPrice extends StatelessWidget {
  const ProductTitleAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Huawei Watch D2',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: kprimaryColor,
          ),
        ),
        Text(
          '\$299',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: kprimaryColor,
          ),
        ),
      ],
    );
  }
}
