import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Brandspicked extends StatefulWidget {
  const Brandspicked({super.key});

  @override
  State<Brandspicked> createState() => _BrandspickedState();
}

class _BrandspickedState extends State<Brandspicked> {
  @override
  Widget build(BuildContext context) {
    // Combine text1 and text2 into a list of maps
    final List<Map<String, String>> brands = [
      {"text1": "Upto 33% OFF", "text2": "Cerave"},
      {"text1": "Flat 5% OFF", "text2": "Minimalist"},
      {"text1": "Upto 50% OFF", "text2": "Mamaearth"},
      {"text1": "Upto 17% OFF", "text2": "Fix Dearma"},
      {"text1": "Flat 10% OFF", "text2": "Aqualogica"},
      {"text1": "Upto 27% OFF", "text2": "The Ordinary"},
      {"text1": "Flat 9% OFF", "text2": "The Derma Co"},
      {"text1": "Upto 32% OFF", "text2": "Cosrx"},
    ];

    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Brands Picks",
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                " For You",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.point_of_sale_outlined,
                color: Colors.pink,
              ),
            ],
          ),
          Wrap(
            spacing: 16, // Horizontal spacing between items
            runSpacing: 16, // Vertical spacing between lines
            children: brands.map((brand) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 250,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Stack(
                      children: [
                        // Image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'lib/assets/images/smartphones.jpg',
                            height: 220,
                            width: 130,
                            fit: BoxFit.cover,
                          ),
                        ),
                        // Blurred Text Overlay for text1
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 25,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                brand['text1']!, // Display text1
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.purple,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Display text2 under text1
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      brand['text2']!, // Display text2
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
