import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gels extends StatefulWidget {
  const Gels({super.key});

  @override
  State<Gels> createState() => _GelsState();
}

class _GelsState extends State<Gels> {
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
                    "Gels",
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
                  Gels(),Gels(),Gels(),Gels(),Gels()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}