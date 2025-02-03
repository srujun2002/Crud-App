import 'package:assesment/core/models/product_model.dart';
import 'package:assesment/core/repository/product_repository.dart';
import 'package:assesment/features/products/models/write_product_state.dart';
import 'package:dio/dio.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'write_product_notifier.g.dart';

@riverpod
class WriteProduct extends _$WriteProduct {
  @override
  WriteProductState build([Product? product]) {
    return WriteProductState(
      product: product ??
          const Product(
            id: 0,
            title: '',
            price: 0,
            description: '',
            image: '',
            category: '',
          ),
    );
  }

  void titleChanged(String title) {
    state = state.copyWith(product: state.product.copyWith(title: title));
  }

  void priceChanged(double price) {
    state = state.copyWith(product: state.product.copyWith(price: price));
  }

  void descriptionChanged(String description) {
    state = state.copyWith(
        product: state.product.copyWith(description: description));
  }

  void categoryChanged(String category) {
    state = state.copyWith(product: state.product.copyWith(category: category));
  }

  void imageChanged(String image) {
    state = state.copyWith(product: state.product.copyWith(image: image));
  }

  ProductRepository get _repository => ref.read(productRepositoryProvider);

  Future<Product> write() {
    try {
      state = state.copyWith(loading: true);

      var updated = state.product;

      if (product!.id == 0) {
        return _repository.create(updated);
      } else {
        return _repository.update(product!.id, updated);
      }
    } on DioException catch (e) {
      state = state.copyWith(loading: false);
      return Future.error(e);
    }
  }
}
