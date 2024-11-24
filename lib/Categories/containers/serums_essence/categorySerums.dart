

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeevee_mobile_app/Categories/containers/serums_essence/serums_essence_main.dart';

class SerumsEssence extends StatefulWidget {
  const SerumsEssence({super.key});

  @override
  State<SerumsEssence> createState() => _SerumsEssenceState();
}

class _SerumsEssenceState extends State<SerumsEssence> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Serums & Essence",
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
                  SerumsEssenceMain(),
                  SerumsEssenceMain(),
                  SerumsEssenceMain(),
                  SerumsEssenceMain(),
                  SerumsEssenceMain()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
