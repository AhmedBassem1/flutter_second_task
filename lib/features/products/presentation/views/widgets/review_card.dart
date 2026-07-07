import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/app_radius.dart';
import 'package:flutter_second_task/core/utils/app_shadows.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

import 'review_card_content.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kbackgroundColor,
        borderRadius: BorderRadius.circular(AppRadius.r6),
        boxShadow: [AppShadows.reviewCardShadow],
      ),
      child: ReviewCardContent(),
    );
  }
}
