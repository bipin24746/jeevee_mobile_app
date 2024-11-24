import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeevee_mobile_app/Categories/containers/HairCreams&Masks/haircreams_main.dart';

class Haircreams extends StatefulWidget {
  const Haircreams({super.key});

  @override
  State<Haircreams> createState() => _HaircreamsState();
}

class _HaircreamsState extends State<Haircreams> {
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
                    "Hair Creams & Masks",
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
                  HaircreamsMain(),HaircreamsMain(),HaircreamsMain(),HaircreamsMain(),HaircreamsMain()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}