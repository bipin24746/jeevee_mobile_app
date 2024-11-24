import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeevee_mobile_app/Categories/containers/Lotions&Creams/lotionCreams_main.dart';

class Lotioncreams extends StatefulWidget {
  const Lotioncreams({super.key});

  @override
  State<Lotioncreams> createState() => _LotioncreamsState();
}

class _LotioncreamsState extends State<Lotioncreams> {
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
                    "Lotions & Creams",
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
                  LotioncreamsMain(),LotioncreamsMain(),LotioncreamsMain(),LotioncreamsMain()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
