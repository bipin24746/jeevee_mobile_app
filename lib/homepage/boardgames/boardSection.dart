import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeevee_mobile_app/homepage/boardgames/boardSectionCard.dart';

class Boardsection extends StatefulWidget {
  const Boardsection({super.key});

  @override
  State<Boardsection> createState() => _BoardsectionState();
}

class _BoardsectionState extends State<Boardsection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Bored? Try Some Board Games!",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis),
              Text(
                "View all",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          SizedBox(
            height: 330,
            child: ListView.builder(
              scrollDirection: Axis.horizontal, // Enables horizontal scrolling
              itemCount: 5, // Number of items
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Boardsectioncard(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
