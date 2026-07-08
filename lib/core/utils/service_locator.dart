import 'package:dio/dio.dart';
import 'package:flutter_second_task/core/utils/api_service.dart';
import 'package:flutter_second_task/features/products/data/data_sources/local/favorite_local_data_source.dart';
import 'package:flutter_second_task/features/products/data/repo/Product_repo.dart';
import 'package:flutter_second_task/features/products/data/repo/Product_repo_impl.dart';
import 'package:flutter_second_task/features/products/presentation/controllers/product_controller/product_controller.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setupLocator() {
 
  getIt.registerSingleton<ApiService>(
  ApiService(Dio()),
  );

 getIt.registerSingleton<FavoriteLocalDataSource>(
    FavoriteLocalDataSource(),
  );

  getIt.registerSingleton<ProductsRepo>(
    ProductRepoImpl(
      getIt<ApiService>(),
      getIt<FavoriteLocalDataSource>(),
    ),
  );

  getIt.registerSingleton<ProductController>(
    ProductController(
      getIt<ProductsRepo>(),
    ),
  );
}