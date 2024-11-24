import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeevee_mobile_app/Categories/containers/Wipes&Buds/wipesBuds_main.dart';

class Wipesbuds extends StatefulWidget {
  const Wipesbuds({super.key});

  @override
  State<Wipesbuds> createState() => _WipesbudsState();
}

class _WipesbudsState extends State<Wipesbuds> {
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
                    "Wipes & Buds",
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
                  WipesbudsMain(),WipesbudsMain(),WipesbudsMain(),WipesbudsMain()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}