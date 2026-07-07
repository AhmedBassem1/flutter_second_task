import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/app_sizes.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

abstract class AppTextStyles {
  static TextStyle s20w600 = TextStyle(
    fontSize: AppSizes.s20.sp,
    fontWeight: FontWeight.w600,
    color: kprimaryColor,
  );

  static final s10w500 = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    color: ktextColor2,
  );
  static final s12w400 = TextStyle(
    fontSize: AppSizes.s12.sp,
    fontWeight: FontWeight.w400,
    color: ktextColor,
  );

  static final s14w400 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: ktextColor,
  );

  static final s15w500 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: ktextColor2,
  );

  static final s14w500 = TextStyle(
    fontSize: AppSizes.s14.sp,
    fontWeight: FontWeight.w500,
    color: kprimaryColor,
  );

  static final s14w700 = TextStyle(
    fontSize: AppSizes.s14.sp,
    fontWeight: FontWeight.w700,
    color: kprimaryColor,
  );

  static final s16w600 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: kprimaryColor,
  );

  static final s18w500 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: ktextColor2,
  );
}
