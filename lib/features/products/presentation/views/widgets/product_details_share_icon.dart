import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsShareIcon extends StatelessWidget {
  const ProductDetailsShareIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: 30.h,
      decoration: const BoxDecoration(
        color: Color(0xffF6F6F6),
        shape: BoxShape.circle,
        border: Border.fromBorderSide(BorderSide(color: Color(0xffDFDFDF))),
      ),
      child: Icon(Icons.share_outlined, size: 14.sp, color: Color(0xff2D2D2D)),
    );
  }
}
