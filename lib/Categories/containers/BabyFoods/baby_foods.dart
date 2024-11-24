import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeevee_mobile_app/Categories/containers/BabyFoods/baby_foods_main.dart';

class BabyFoods extends StatefulWidget {
  const BabyFoods({super.key});

  @override
  State<BabyFoods> createState() => _BabyFoodsState();
}

class _BabyFoodsState extends State<BabyFoods> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Baby Foods",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: Text(
                        "View all",
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Enables horizontal scrolling
              child: Row(
                children: [
                  BabyFoodsMain(),BabyFoodsMain(),BabyFoodsMain(),BabyFoodsMain()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}