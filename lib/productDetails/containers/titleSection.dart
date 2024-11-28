import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleSection extends StatefulWidget {
  const TitleSection({super.key});

  @override
  State<TitleSection> createState() => _TitleSectionState();
}

class _TitleSectionState extends State<TitleSection> {
  int countNumber = 1; // Initialize countNumber here

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "title",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Icon(
                Icons.share,
                color: Colors.blue,
              ),
            ],
          ),
          SizedBox(height: 18), // Add some spacing between rows
          Row(
            children: [
              // Generate 5 stars
              ...List.generate(
                5,
                (index) => Icon(
                  Icons.star_border_outlined,
                  size: 20,
                ),
              ),
              // Add the rating text after the stars
              Text(" 0.0 / 5  (0)"),
            ],
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Text(
                "NPR. 960",
                style: TextStyle(decoration: TextDecoration.lineThrough),
              ),
              Text("  -12%")
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "NPR. 844.80",
                    style: TextStyle(color: Colors.pink, fontSize: 20),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(CupertinoIcons.minus),
                    onPressed: () {
                      setState(() {
                        if (countNumber > 1) countNumber--;
                      });
                    },
                  ),
                  Text(
                    "$countNumber", // Convert countNumber to string
                    style: TextStyle(fontSize: 16),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        countNumber++;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "(Inclusive of all Taxes)",
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
