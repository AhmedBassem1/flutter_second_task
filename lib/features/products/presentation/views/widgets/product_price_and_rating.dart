import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

class ProductPriceAndRating extends StatelessWidget {
  const ProductPriceAndRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          r'$1,999',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: kprimaryColor,
          ),
        ),
        Row(
          children: [
            Icon(Icons.star_rounded, color: Color(0xFFFCD53F), size: 16),
            SizedBox(width: 4),
            Text(
              '4.5 (200)',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: ktextColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
