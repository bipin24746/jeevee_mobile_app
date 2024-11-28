import 'package:flutter/cupertino.dart';
import 'package:jeevee_mobile_app/productDetails/containers/relatedProducts/relatedCard.dart';

class Relatedproducts extends StatefulWidget {
  const Relatedproducts({super.key});

  @override
  State<Relatedproducts> createState() => _RelatedproductsState();
}

class _RelatedproductsState extends State<Relatedproducts> {
  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(
      height: 330,
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Enables horizontal scrolling
        itemCount: 5, // Number of items
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Relatedcard(), // Your custom card widget
          );
        },
      ),
    );
  }
}
