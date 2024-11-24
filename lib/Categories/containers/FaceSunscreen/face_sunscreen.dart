import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeevee_mobile_app/Categories/containers/FaceSunscreen/face_sunscreen_main.dart';

class FaceSunscreen extends StatefulWidget {
  const FaceSunscreen({super.key});

  @override
  State<FaceSunscreen> createState() => _FaceSunscreenState();
}

class _FaceSunscreenState extends State<FaceSunscreen> {
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
                    "Face Sunscreen",
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
                  FaceSunscreenMain(),FaceSunscreenMain(),FaceSunscreenMain(),FaceSunscreenMain(),FaceSunscreenMain()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}