import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

import 'widgets/product_details_fav.dart';
import 'widgets/product_details_view_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: ProductDetailsTitle(),
        leading: ArrowBackIcon(),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 16.0.w),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ProductDetailsShareIcon(),
                SizedBox(width: 8.w),
                ProductDetailsFav(),
              ],
            ),
          ),
        ],
      ),
      body: ProductDetailsViewBody(),
    );
  }
}

class ProductDetailsShareIcon extends StatelessWidget {
  const ProductDetailsShareIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: 30.h,
      decoration: const BoxDecoration(
        color: Color(0xffF6F6F6),
        shape: BoxShape.circle,
        border: Border.fromBorderSide(
          BorderSide(color: Color(0xffDFDFDF)),
        ),
      ),
      child:  Icon(
        Icons.share_outlined,
        size: 14.sp,
        color: Color(0xff2D2D2D),
      ),
    );
  }
}

class ArrowBackIcon extends StatelessWidget {
  const ArrowBackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 30.w,
        height: 30.h,
        decoration: const BoxDecoration(
          color: Color(0xffF6F6F6),
          shape: BoxShape.circle,
          border: Border.fromBorderSide(
            BorderSide(color: Color(0xffDFDFDF)),
          ),
        ),
        child:  Icon(
          Icons.arrow_back_ios_new,
          size: 14.sp,
          color: Color(0xff2D2D2D),
        ),
      ),
    );
  }
}

class ProductDetailsTitle extends StatelessWidget {
  const ProductDetailsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Product Details',
      style: TextStyle(
        color: kprimaryColor,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}