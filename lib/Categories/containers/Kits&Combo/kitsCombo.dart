import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeevee_mobile_app/Categories/containers/Kits&Combo/kitsCombo_main.dart';

class Kitscombo extends StatefulWidget {
  const Kitscombo({super.key});

  @override
  State<Kitscombo> createState() => _KitscomboState();
}

class _KitscomboState extends State<Kitscombo> {
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
                    "Kits & Combos",
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
                  KitscomboMain(),KitscomboMain(),KitscomboMain(),KitscomboMain()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}