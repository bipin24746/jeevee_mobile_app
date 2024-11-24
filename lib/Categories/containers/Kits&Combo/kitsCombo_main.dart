import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KitscomboMain extends StatefulWidget {
  const KitscomboMain({super.key});

  @override
  State<KitscomboMain> createState() => _KitscomboMainState();
}

class _KitscomboMainState extends State<KitscomboMain> {
  @override
 Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                width: 150,
                child: DecoratedBox(
                  decoration: BoxDecoration(border: Border.all()),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 15,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              border: Border.all(),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.5), // Shadow color
                                  spreadRadius: 2, // Spread radius
                                  blurRadius: 5, // Blur radius
                                  offset: Offset(
                                      0, 3), // Offset in the X and Y direction
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 2, right: 5, left: 5),
                              child: Text(
                                "BESTSELLER",
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: DecoratedBox(
                          decoration: BoxDecoration(border: Border.all()),
                          child: SizedBox(
                            height: 130,
                            child: Image.asset(
                                'lib/assets/images/smartphones.jpg'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, top: 5),
                        child: Row(
                          children: [Icon(Icons.star), Text("4.8 / 5 (11)")],
                        ),
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(border: Border.all()),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0, left: 5),
                              child: Text(
                                "kleida Nice 10% Niacinamide + 1% Zinc, 30ml",
                                style: TextStyle(fontSize: 13),
                                maxLines: 2, // Limits the text to 2 lines
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "NPR. ",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "1529.85",
                                  style: TextStyle(
                                      color: Colors.pink,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("|"),
                                Text(
                                  "7% Off",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "NPR. 1645",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 10),
                                ),
                                Text(
                                  "Save NPR. 115.15",
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    CupertinoIcons.heart,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 100,
                                    height: 25,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.pink,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          "Add to cart",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white),
                                        )),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
