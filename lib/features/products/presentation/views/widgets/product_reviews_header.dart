import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

class ProductReviewsHeader extends StatelessWidget {
  const ProductReviewsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Reviews',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: kprimaryColor,
              ),
            ),
            Row(
              children: [
                Icon(Icons.star_rounded, color: Color(0xFFFCD53F), size: 16),
                SizedBox(width: 4),
                Text(
                  '4.5',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: ktextColor2,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 4),
        Text(
          '1,543',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff747474),
          ),
        ),
      ],
    );
  }
}
