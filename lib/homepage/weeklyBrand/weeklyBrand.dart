import 'package:flutter/material.dart';
import 'package:jeevee_mobile_app/homepage/weeklyBrand/brandCard.dart';

class Weeklybrand extends StatefulWidget {
  const Weeklybrand({super.key});

  @override
  State<Weeklybrand> createState() => _WeeklybrandState();
}

class _WeeklybrandState extends State<Weeklybrand> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Enables horizontal scrolling
        itemCount: 5, // Number of items
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: BrandCard(), // Your custom card widget
          );
        },
      ),
    );
  }
}
