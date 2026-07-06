import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/app_sizes.dart';

class FavoriteProduct extends StatefulWidget {
  const FavoriteProduct({super.key});

  @override
  State<FavoriteProduct> createState() => _FavoriteProductState();
}

class _FavoriteProductState extends State<FavoriteProduct> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: Container(
        width: AppSizes.s30,
        height: AppSizes.s30,
        decoration: const BoxDecoration(
          color: Color(0xffA3A2A2),
          shape: BoxShape.circle,
        ),
        child: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          size: AppSizes.icon14.sp,
          color: isFavorite ? Color(0xffFF383C) : Colors.white,
        ),
      ),
    );
  }
}
