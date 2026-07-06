import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'product_card.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      child: GridView.builder(
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.w,
          mainAxisSpacing: 16.h,
          mainAxisExtent: 300.h,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ProductCard();
        },
      ),
    );
  }
}
