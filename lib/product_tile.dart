import 'package:flutter/material.dart';
import 'package:shop_online_x/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        Stack(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),
              child: Image.network(
                product.imageLink,
                fit: BoxFit.cover,
              ),
            ),
            const Positioned(
                top: 3,
                right: 3,
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 20,
                ))
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          product.name,
          maxLines: 2,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(height: 8),
        if (product.rating != null)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  product.rating.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
                const Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.white,
                )
              ],
            ),
          )
      ]),
    );
  }
}
