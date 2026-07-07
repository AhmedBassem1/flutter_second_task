import 'package:device_preview/device_preview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/routes/app_routs.dart';
import 'package:flutter_second_task/core/utils/api_service.dart';
import 'package:flutter_second_task/core/utils/app_constants.dart';
import 'package:flutter_second_task/core/utils/app_strings.dart';
import 'package:flutter_second_task/features/products/data/repo/Product_repo_impl.dart';
import 'package:flutter_second_task/features/products/presentation/controllers/product_controller/product_controller.dart';
import 'package:flutter_second_task/features/products/presentation/views/product_details_view.dart';

import 'features/products/presentation/views/products_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // Set to false to disable Device Preview
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: AppConstants.designSize,
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
          create: (context) =>
              ProductController(ProductRepoImpl(ApiService(Dio())))..getProducts(),
        ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.appTitle,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          initialRoute: AppRoutes.productsView,
          routes: {
            AppRoutes.productsView: (context) => const ProductsView(),
            AppRoutes.productDetailsView: (context) => const ProductDetailsView(),
          },
        ),
      ),
    );
  }
}
