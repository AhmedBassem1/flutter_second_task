import 'package:dartz/dartz.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';

import '../../../../core/error/failure.dart';

abstract class ProductsRepo {
  Future<Either<Failure, List<ProductModel>>> getProducts();

  Future<bool> toggleFavorite(int id);
}
