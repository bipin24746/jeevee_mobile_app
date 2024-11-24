import 'package:flutter/material.dart';

class MakeUpList extends StatelessWidget {
  const MakeUpList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8, right: 4),
                  child: SizedBox(
                    height: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image:
                              AssetImage('lib/assets/images/smartphones.jpg'),
                          fit: BoxFit.cover, // Ensures the image covers the box
                        ),
                      ),
                      child: Container(
                        color: Colors.black
                            .withOpacity(0.4), // Semi-transparent overlay
                        child: Center(
                          child: Text(
                            "Skincare",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 4, right: 8),
                  child: SizedBox(
                    height: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image:
                              AssetImage('lib/assets/images/smartphones.jpg'),
                          fit: BoxFit.cover, // Ensures the image covers the box
                        ),
                      ),
                      child: Container(
                        color: Colors.black
                            .withOpacity(0.4), // Semi-transparent overlay
                        child: Center(
                          child: Text(
                            "Makeup",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8, right: 4),
                  child: SizedBox(
                    height: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image:
                              AssetImage('lib/assets/images/smartphones.jpg'),
                          fit: BoxFit.cover, // Ensures the image covers the box
                        ),
                      ),
                      child: Container(
                        color: Colors.black
                            .withOpacity(0.4), // Semi-transparent overlay
                        child: Center(
                          child: Text(
                            "Mom & Baby",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 4, right: 8),
                  child: SizedBox(
                    height: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image:
                              AssetImage('lib/assets/images/smartphones.jpg'),
                          fit: BoxFit.cover, // Ensures the image covers the box
                        ),
                      ),
                      child: Container(
                        color: Colors.black
                            .withOpacity(0.4), // Semi-transparent overlay
                        child: Center(
                          child: Text(
                            "Kid's Fashion",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8, right: 4),
                  child: SizedBox(
                    height: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image:
                              AssetImage('lib/assets/images/smartphones.jpg'),
                          fit: BoxFit.cover, // Ensures the image covers the box
                        ),
                      ),
                      child: Container(
                        color: Colors.black
                            .withOpacity(0.4), // Semi-transparent overlay
                        child: Center(
                          child: Text(
                            "Health & Wellness",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 4, right: 8),
                  child: SizedBox(
                    height: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image:
                              AssetImage('lib/assets/images/smartphones.jpg'),
                          fit: BoxFit.cover, // Ensures the image covers the box
                        ),
                      ),
                      child: Container(
                        color: Colors.black
                            .withOpacity(0.4), // Semi-transparent overlay
                        child: Center(
                          child: Text(
                            "Personal Care",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8, right: 4),
                  child: SizedBox(
                    height: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image:
                              AssetImage('lib/assets/images/smartphones.jpg'),
                          fit: BoxFit.cover, // Ensures the image covers the box
                        ),
                      ),
                      child: Container(
                        color: Colors.black
                            .withOpacity(0.4), // Semi-transparent overlay
                        child: Center(
                          child: Text(
                            "Haircare",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 4, right: 8),
                  child: SizedBox(
                    height: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image:
                              AssetImage('lib/assets/images/smartphones.jpg'),
                          fit: BoxFit.cover, // Ensures the image covers the box
                        ),
                      ),
                      child: Container(
                        color: Colors.black
                            .withOpacity(0.4), // Semi-transparent overlay
                        child: Center(
                          child: Text(
                            "Fragrances",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8, right: 4),
                  child: SizedBox(
                    height: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image:
                              AssetImage('lib/assets/images/smartphones.jpg'),
                          fit: BoxFit.cover, // Ensures the image covers the box
                        ),
                      ),
                      child: Container(
                        color: Colors.black
                            .withOpacity(0.4), // Semi-transparent overlay
                        child: Center(
                          child: Text(
                            "Gadgets",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 4, right: 8),
                  child: SizedBox(
                    height: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image:
                              AssetImage('lib/assets/images/smartphones.jpg'),
                          fit: BoxFit.cover, // Ensures the image covers the box
                        ),
                      ),
                      child: Container(
                        color: Colors.black
                            .withOpacity(0.4), // Semi-transparent overlay
                        child: Center(
                          child: Text(
                            "Accessories",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("WHAT DO YOU HAVE "),
              Text(
                "CONCERN WITH?",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
