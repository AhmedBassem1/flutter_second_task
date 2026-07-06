import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReviewCardContent extends StatelessWidget {
  const ReviewCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0.r),
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
                  width: 24,
                  height: 24,
                ),
              ),
              SizedBox(width: 8.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Omar Ali',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: kprimaryColor,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: Color(0xFFFCD53F),
                        size: 12.sp,
                      ),
                      SizedBox(width: 2.w),
                      Text(
                        '4.5',
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: ktextColor2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8.h),
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
