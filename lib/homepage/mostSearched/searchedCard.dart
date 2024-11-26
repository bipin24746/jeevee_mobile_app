import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchedCard extends StatelessWidget {
  const SearchedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 150,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bestseller Tag
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 15,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5.0, vertical: 2.0),
                      child: const Text(
                        "BESTSELLER",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Product Image
              Center(
                child: DecoratedBox(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: SizedBox(
                    height: 133,
                    child: Image.asset(
                      'lib/assets/images/smartphones.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              // Rating
              Padding(
                padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      size: 14,
                     ),
                    SizedBox(width: 4),
                    Text(
                      "4.8 / 5 (11)",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),

              // Product Details
              DecoratedBox(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 5.0),
                      child: const Text(
                        "kleida Nice 10% Niacinamide + 1% Zinc, 30ml",
                        style: TextStyle(fontSize: 13),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    // Pricing Info
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "NPR. ",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "1529.85",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(" | "),
                          Text(
                            "7% Off",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "NPR. 1645",
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 10,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Save NPR. 115.15",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),

                    // Action Buttons
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            CupertinoIcons.heart,
                            size: 25,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 100,
                            height: 25,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Add to cart",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
