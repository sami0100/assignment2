import 'package:flutter/material.dart';
import '../models/product.dart';
import '../screens/ProductDetail.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  const ProductTile({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(

        leading: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(product.imageUrl),
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ),
        ),
        title: Text(product.title),
        subtitle: Text('\$${product.price}'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailScreen(product: product),
            ),
          );
        },
      ),
    );
  }
}
