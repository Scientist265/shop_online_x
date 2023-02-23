import 'package:flutter/material.dart';
import 'package:shop_online_x/product.dart';

class ProductTile extends StatefulWidget {
  final Product product;
  const ProductTile(this.product);

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  bool isColor = false;

  void onTappedfave() {
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  widget.product.imageLink,
                  fit: BoxFit.cover,
                ),
              ),
              const Positioned(
                  top: 3,
                  right: 3,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.grey,
                    size: 20,
                  ))
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            widget.product.name,
            maxLines: 2,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 8),
          if (widget.product.rating != null)
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
                    widget.product.rating.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Icon(
                    Icons.star,
                    size: 16,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          const SizedBox(
            height: 8,
          ),
          Text(
            // ignore: prefer_interpolation_to_compose_strings
            "\$" + widget.product.price,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ]),
      ),
    );
  }
}
