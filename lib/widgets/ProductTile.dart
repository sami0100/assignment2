import 'package:flutter/material.dart';
import '../models/product.dart';
import '../screens/ProductDetail.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  const ProductTile({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        // Product Image
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            product.imageUrl,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        // Product Title
        title: Text(
          product.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        // Product Price
        subtitle: Text(
          '\$${product.price}',
          style: TextStyle(
            color: Colors.green,  // Color accent for price
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        // Navigate to Product Details
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
