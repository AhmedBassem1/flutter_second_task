import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

import 'review_card_content.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kbackgroundColor,
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 45.r,
            spreadRadius: 0.r,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: ReviewCardContent(),
    );
  }
}
