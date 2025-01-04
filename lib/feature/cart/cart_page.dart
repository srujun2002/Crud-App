import 'package:assesment/extensions/async_widget.dart';
import 'package:assesment/feature/cart/get_cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartPage extends HookConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        AsyncWidget(
            value: ref.watch(getCartProvider),
            data: (data) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: data.products.length,
                itemBuilder: (context, index) {
                  final cart = data.products[index];
                  return ListTile(
                    title: Text(cart.productId.toString()),
                    subtitle: Text(cart.quantity.toString()),
                  );
                },
              );
            }),
      ],
    );
  }
}
