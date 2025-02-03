import 'package:assesment/core/models/product_model.dart';
import 'package:assesment/features/products/provider/product_provider.dart';
import 'package:assesment/features/products/provider/write_product_notifier.dart';
import 'package:assesment/features/products/widgets/product_list_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductForm extends HookConsumerWidget {
  Product? product;

  ProductForm({super.key, this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = writeProductProvider(product);
    final notifier = ref.read(provider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Form'),
        actions: [
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProductListPage())),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Column(
              children: [
                TextFormField(
                  initialValue: product?.title,
                  onChanged: (value) => notifier.titleChanged(value),
                  decoration: InputDecoration(
                    labelText: 'Title',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  initialValue: product?.price.toString(),
                  onChanged: (value) =>
                      notifier.priceChanged(double.parse(value)),
                  decoration: InputDecoration(
                    labelText: 'Price',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                TextFormField(
                  initialValue: product?.description,
                  onChanged: (value) => notifier.descriptionChanged(value),
                  decoration: InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                ),
                SizedBox(height: 20),
                TextFormField(
                  initialValue: product?.image,
                  onChanged: (value) => notifier.imageChanged(value),
                  decoration: InputDecoration(
                    labelText: 'Image URL',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  initialValue: product?.category,
                  onChanged: (value) => notifier.categoryChanged(value),
                  decoration: InputDecoration(
                    labelText: 'Category',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                FilledButton(
                  onPressed: () async {
                    // Handle form submission
                    await notifier.write();
                    await ref.refresh(productProvider);
                    Navigator.pop(context);
                  },
                  child: Text('Submit'),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
