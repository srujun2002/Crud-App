import 'package:assesment/extensions/async_widget.dart';
import 'package:assesment/feature/category/provider/single_product_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SingleProductPage extends HookConsumerWidget {
  const SingleProductPage({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single Product'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              AsyncWidget(
                  value: ref.watch(singleProductProvider(1)),
                  data: (data) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CachedNetworkImage(
                          imageUrl: data.image!,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
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
                                onPressed: () {},
                                child: const Text('Add to Cart'))
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
          )),
    );
  }
}
