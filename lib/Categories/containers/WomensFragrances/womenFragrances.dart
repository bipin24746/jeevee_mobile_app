import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeevee_mobile_app/Categories/containers/WomensFragrances/womenFragrances_main.dart';

class Womenfragrances extends StatefulWidget {
  const Womenfragrances({super.key});

  @override
  State<Womenfragrances> createState() => _WomenfragrancesState();
}

class _WomenfragrancesState extends State<Womenfragrances> {
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
                    "Women's Fragrances",
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
                  WomenfragrancesMain(),WomenfragrancesMain(),WomenfragrancesMain(),WomenfragrancesMain()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}