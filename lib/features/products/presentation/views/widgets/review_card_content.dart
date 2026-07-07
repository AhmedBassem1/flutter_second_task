import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/app_radius.dart';
import 'package:flutter_second_task/core/utils/app_sizes.dart';
import 'package:flutter_second_task/core/utils/app_text_styles.dart';
import 'package:flutter_second_task/core/utils/colors.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/review_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReviewCardContent extends StatelessWidget {
  const ReviewCardContent({super.key, required this.reviewModel});
  final ReviewModel reviewModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppRadius.r12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,

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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      reviewModel.reviewerName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.s12w400.copyWith(
                        color: kprimaryColor,
                      ),
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
                          '${reviewModel.rating}',
                          style: AppTextStyles.s10w500,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: AppSizes.s8w),
          Text(
            reviewModel.comment,
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
