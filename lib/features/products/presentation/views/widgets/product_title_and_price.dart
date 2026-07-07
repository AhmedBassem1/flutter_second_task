import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/app_text_styles.dart';

class ProductTitleAndPrice extends StatelessWidget {
  const ProductTitleAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Huawei Watch D2',
          style: AppTextStyles.s20w600,
        ),
        Text(
          '\$299',
          style: AppTextStyles.s20w600,
        ),
      ],
    );
  }
}
