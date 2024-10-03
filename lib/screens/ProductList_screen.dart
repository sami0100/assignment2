import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/ProductTile.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      title: 'iPhone 13 Pro Max',
      description: 'Apple’s finest iPhone.',
      price: 1099.00,
      imageUrl: 'assets/images/iphone13.jpeg',  // Local image
    ),
    Product(
      title: 'Samsung Galaxy S21 Ultra',
      description: 'The flagship Android phone from Samsung.',
      price: 1199.99,
      imageUrl: 'assets/images/galaxys21.jpeg',  // Local image
    ),
    Product(
      title: 'Sony WH-1000XM4 Headphones',
      description: 'Noise canceling headphones with superior sound quality.',
      price: 348.00,
      imageUrl: 'assets/images/sony_headphones.jpeg',  // Local image
    ),
    Product(
      title: 'Apple MacBook Pro 14-inch',
      description: 'Apple’s finest MacBook Pro with M1 Pro chip.',
      price: 1999.00,
      imageUrl: 'assets/images/macbookpro14.jpeg',  // Local image
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product List')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductTile(product: products[index]);
        },
      ),
    );
  }
}
