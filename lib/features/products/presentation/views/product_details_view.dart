import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

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
        title: const Text(
          'Product Details',
          style: TextStyle(
            color: kprimaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: Center(
          child: Container(
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
              Icons.arrow_back_ios_new,
              size: 14,
              color: Color(0xff2D2D2D),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
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
                    Icons.share_outlined,
                    size: 14,
                    color: Color(0xff2D2D2D),
                  ),
                ),
                SizedBox(width: 8),
                Container(
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
                ),
              ],
            ),
          ),
        ],
      ),
      body: ProductDetailsViewBody(),
    );
  }
}
