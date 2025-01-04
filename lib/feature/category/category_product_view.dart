import 'package:assesment/extensions/async_widget.dart';
import 'package:assesment/feature/category/provider/product_provider.dart';
import 'package:assesment/feature/category/single_product_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CategoryProductView extends HookConsumerWidget {
  const CategoryProductView({super.key, required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryName),
        ),
        body: SingleChildScrollView(
          child: AsyncWidget(
              value: ref.watch(productProvider),
              data: (data) {
                return Column(
                  children: [
                    ListView.builder(
                        itemCount: data.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          if (data[index].category == categoryName) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return SingleProductPage(
                                    id: data[index].id,
                                  );
                                }));
                              },
                              child: Container(
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 2,
                                          offset: Offset(0, 2))
                                    ]),
                                child: ListTile(
                                    title: Column(
                                      children: [
                                        Text(data[index].title),
                                        Row(
                                          children: [
                                            Text(
                                                'Price: ${data[index].price.toString()}'),
                                            const Spacer(),
                                            Text(
                                                'Category: ${data[index].category.toString()}')
                                          ],
                                        )
                                      ],
                                    ),
                                    subtitle: Text(
                                        maxLines: 2,
                                        data[index].description ?? ''),
                                    leading: data[index].image != null
                                        ? CachedNetworkImage(
                                            imageUrl: data[index].image!,
                                            width: 50,
                                            height: 50,
                                            fit: BoxFit.cover,
                                          )
                                        : const Icon(
                                            Icons.image_not_supported)),
                              ),
                            );
                          } else {
                            return const SizedBox.shrink();
                          }
                        }),
                  ],
                );
              }),
        ));
  }
}
