import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatefulWidget {
  const ProductImage({super.key});

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
          height: 300,
          child: Center(
            child: DecoratedBox(
              decoration:
                  BoxDecoration(border: Border.all(), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'lib/assets/images/smartphones.jpg',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
          )),
    );
  }
}
