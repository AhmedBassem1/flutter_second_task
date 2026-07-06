import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/app_radius.dart';
import 'package:flutter_second_task/core/utils/app_sizes.dart';
import 'package:flutter_second_task/features/products/presentation/views/widgets/product_details_share_icon.dart';
import 'widgets/arrow_back_icon.dart';
import 'widgets/product_details_fav.dart';
import 'widgets/product_details_title.dart';
import 'widgets/product_details_view_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: ProductDetailsTitle(),
        leading: ArrowBackIcon(),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: AppRadius.r16),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ProductDetailsShareIcon(),
                SizedBox(width: AppSizes.s8w),
                ProductDetailsFav(),
              ],
            ),
          ),
        ],
      ),
      body: ProductDetailsViewBody(),
    );
  }
}
