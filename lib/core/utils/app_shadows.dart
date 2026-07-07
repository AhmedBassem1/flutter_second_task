import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppShadows {
  static BoxShadow reviewCardShadow = BoxShadow(
    color: Colors.black.withValues(alpha: 0.08),
    blurRadius: 45.r,
    spreadRadius: 0,
    offset: Offset(0, 4.h),
  );
}