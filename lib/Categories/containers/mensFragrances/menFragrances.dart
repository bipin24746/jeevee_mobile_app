import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeevee_mobile_app/Categories/containers/mensFragrances/menFragrances_main.dart';

class Menfragrances extends StatefulWidget {
  const Menfragrances({super.key});

  @override
  State<Menfragrances> createState() => _MenfragrancesState();
}

class _MenfragrancesState extends State<Menfragrances> {
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
                    "Men's Fragrances",
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
                  MenfragrancesMain(),MenfragrancesMain(),MenfragrancesMain(),MenfragrancesMain()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}