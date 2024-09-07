import 'package:flutter/material.dart';
import 'package:ostad_flutter_live_class/pages/add_new_product_screen.dart';
import 'package:ostad_flutter_live_class/widgets/product_item.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('P R O D U C T L I S T'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
          itemCount: 20,
          itemBuilder: (context, index) {
            return const ProductItem();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 8);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey.shade200,
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const AddNewProductScreen();
          }));
        },
      ),
    );
  }
}
