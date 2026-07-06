import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

class ProductReviewsHeader extends StatelessWidget {
  const ProductReviewsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Reviews',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: kprimaryColor,
              ),
            ),
            Row(
              children: [
                Icon(Icons.star_rounded, color: Color(0xFFFCD53F), size: 16.sp),
                SizedBox(width: 4.w),
                Text(
                  '4.5',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: ktextColor2,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 4.h),
        Text(
          '1,543',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xff747474),
          ),
        ),
      ],
    );
  }
}
