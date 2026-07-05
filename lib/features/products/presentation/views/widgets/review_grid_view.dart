import 'package:flutter/material.dart';

import 'review_card.dart';

class ReviewGridView extends StatelessWidget {
  const ReviewGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 16,
        mainAxisExtent: 129,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return ReviewCard();
      },
    );
  }
}
