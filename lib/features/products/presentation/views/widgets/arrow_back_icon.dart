import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArrowBackIcon extends StatelessWidget {
  const ArrowBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onDoubleTap: ()=> Navigator.pop(context),
        child: Container(
          width: 30.w,
          height: 30.h,
          decoration: const BoxDecoration(
            color: Color(0xffF6F6F6),
            shape: BoxShape.circle,
            border: Border.fromBorderSide(BorderSide(color: Color(0xffDFDFDF))),
          ),
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 14.sp,
            color: Color(0xff2D2D2D),
          ),
        ),
      ),
    );
  }
}
