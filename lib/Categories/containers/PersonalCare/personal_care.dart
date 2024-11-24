import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeevee_mobile_app/Categories/containers/PersonalCare/personalCareMain.dart';

class PersonalCare extends StatefulWidget {
  const PersonalCare({super.key});

  @override
  State<PersonalCare> createState() => _PersonalCareState();
}

class _PersonalCareState extends State<PersonalCare> {
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
                    "Personal Care",
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
                  Personalcaremain(),
                  Personalcaremain(),
                  Personalcaremain(),
                  Personalcaremain()
                ],
              ),
            )
          ],
        ),
      ),
    );
    
  }
}
