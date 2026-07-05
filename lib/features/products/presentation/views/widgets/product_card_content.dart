import 'package:flutter/material.dart';

import 'product_card_details.dart';
import 'product_card_image.dart';

class ProductCardContent extends StatelessWidget {
  const ProductCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 3, child: const ProductCardImage()),
        Expanded(flex: 2, child: const ProductCardDetails()),
      ],
    );
  }
}
