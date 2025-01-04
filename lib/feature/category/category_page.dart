import 'package:assesment/extensions/async_widget.dart';
import 'package:assesment/feature/category/category_product_view.dart';
import 'package:assesment/feature/category/provider/category_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CategoryPage extends HookConsumerWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(title: const Text('Category')),
        body: AsyncWidget(
            value: ref.watch(categoryProvider),
            data: (data) {
              return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CategoryProductView(
                            categoryName: data[index],
                          );
                        }));
                      },
                      child: ListTile(
                        trailing: const Icon(Icons.arrow_forward_ios),
                        leading: const Icon(Icons.category),
                        title: Text(data[index]),
                      ),
                    );
                  });
            }));
  }
}
