import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

import 'review_card_content.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kbackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 45,
            spreadRadius: 0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: ReviewCardContent(),
    );
  }
}
