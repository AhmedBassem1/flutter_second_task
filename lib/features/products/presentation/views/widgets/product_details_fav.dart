import 'package:flutter/material.dart';

class ProductDetailsFav extends StatelessWidget {
  const ProductDetailsFav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
        color: Color(0xffF6F6F6),
        shape: BoxShape.circle,
        border: Border.fromBorderSide(
          BorderSide(color: Color(0xffDFDFDF)),
        ),
      ),
      child: const Icon(
        Icons.favorite_border,
        size: 14,
        color: Color(0xff2D2D2D),
      ),
    );
  }
}