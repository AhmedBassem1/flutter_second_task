import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'review_card.dart';

class ReviewGridView extends StatelessWidget {
  const ReviewGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 16.h,
        mainAxisExtent: 180.h,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return ReviewCard();
      },
    );
  }
}
