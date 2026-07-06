import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/app_radius.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

import 'favorite_product.dart';

class ProductCardImage extends StatelessWidget {
  const ProductCardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/assets_tast.jpg'),
                fit: BoxFit.cover,
              ),
              color: ktextColor2,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppRadius.r16),
                topRight: Radius.circular(AppRadius.r16),
              ),
            ),
          ),
        ),
        Positioned(top: 10, left: 10, child: const FavoriteProduct()),
      ],
    );
  }
}
