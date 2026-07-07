import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/app_radius.dart';
import 'package:flutter_second_task/core/utils/app_sizes.dart';
import 'package:flutter_second_task/core/utils/app_text_styles.dart';
import 'package:flutter_second_task/core/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReviewCardContent extends StatelessWidget {
  const ReviewCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppRadius.r12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.transparent,
                child: SvgPicture.asset(
                  'assets/images/user_review.svg',
                  width: AppSizes.s24,
                  height: AppSizes.s24,
                ),
              ),
              SizedBox(width: AppSizes.s8w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Omar Ali',
                    style:AppTextStyles.s12w400.copyWith(color: kprimaryColor),
                  ),
                  SizedBox(height: AppSizes.s2h),
                  Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: kstarIconColor,
                        size: 12.sp,
                      ),
                      SizedBox(width: 2.w),
                      Text(
                        '4.5',
                        style: AppTextStyles.s10w500,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: AppSizes.s8w),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            maxLines: 3,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: kprimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
