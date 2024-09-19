import 'package:flutter/material.dart';
import 'package:globosoft/Model/model_class.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://mansharcart.com/image/${product.thumb}',
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:  18.0,vertical: 16),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(fontSize: 24),
                ),
                 const SizedBox(width: 40,),
            Text(
                    product.price,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                "Stock: ${product.stockStatus}",
                style: const TextStyle(color: Colors.green),
              ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
