import 'package:assesment/extensions/async_widget.dart';
import 'package:assesment/extensions/loading_text_button_wrapper.dart';
import 'package:assesment/feature/category/provider/single_product_provider.dart';
import 'package:assesment/models/cart_metadata.dart';
import 'package:assesment/models/cart_model.dart';
import 'package:assesment/repo/cart_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SingleProductPage extends HookConsumerWidget {
  const SingleProductPage({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = useState<bool>(false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single Product'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AsyncWidget(
                    value: ref.watch(singleProductProvider(1)),
                    data: (data) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AspectRatio(
                            aspectRatio: 1,
                            child: Image.network(
                              data.image!,
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          if (data.image == null) const SizedBox(height: 200),
                          const SizedBox(height: 16),
                          Text(
                            data.title,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Price: ${data.price.toString()}',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Row(
                                children: List.generate(5, (index) {
                                  return const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  );
                                }),
                              ),
                              const Spacer(),
                              FilledButton(
                                onPressed: () async {
                                  loading.value = true;
                                  await ref.read(cartRepoProvider).create(
                                        Cart(
                                          userId: 1,
                                          products: [
                                            CartMetadata(
                                                productId: data.id, quantity: 1)
                                          ],
                                        ),
                                      );
                                  loading.value = false;
                                },
                                child: LoadingButtonTextWrapper(
                                  loading: loading.value,
                                  child: const Text('Add to Cart'),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Text(
                            data.description ?? "",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      );
                    }),
              ],
            ),
          )),
    );
  }
}
