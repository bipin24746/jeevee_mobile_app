import 'package:flutter/material.dart';

class Desc extends StatefulWidget {
  const Desc({super.key});

  @override
  State<Desc> createState() => _DescState();
}

class _DescState extends State<Desc> {
  // Variable to track selected box
  String selectedBox = "Description"; // Default selected box

  @override
  Widget build(BuildContext context) {
    return Column(
    
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              // Description Box
              buildBox(
                context,
                title: "Description",
                icon: Icons.description,
                isSelected: selectedBox == "Description",
                onTap: () {
                  setState(() {
                    selectedBox = "Description";
                  });
                },
              ),
              // Ratings & Reviews Box
              buildBox(
                context,
                title: "Ratings & Reviews",
                icon: Icons.thumb_up_outlined,
                isSelected: selectedBox == "Ratings & Reviews",
                onTap: () {
                  setState(() {
                    selectedBox = "Ratings & Reviews";
                  });
                },
              ),
              // FAQs Box
              buildBox(
                context,
                title: "FAQs",
                icon: Icons.chat_outlined,
                isSelected: selectedBox == "FAQs",
                onTap: () {
                  setState(() {
                    selectedBox = "FAQs";
                  });
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 10), // Spacing between tabs and content
        // Content below the row based on selected box
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          child: getSelectedContent(),
        ),
      ],
    );
  }

  // Helper function to build each box
  Widget buildBox(BuildContext context,
      {required String title,
      required IconData icon,
      required bool isSelected,
      required VoidCallback onTap}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: isSelected ? Colors.blue : Colors.white, // Background color
        ),
        child: GestureDetector(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: isSelected ? Colors.white : Colors.black),
              const SizedBox(width: 5), // Space between icon and text
              Text(
                title,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method to get content based on selected box
  Widget getSelectedContent() {
    switch (selectedBox) {
      case "Description":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Description Content",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("Here is some detailed description about the item."),
          ],
        );
      case "Ratings & Reviews":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Ratings & Reviews Content",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("Here are ratings and reviews from users."),
          ],
        );
      case "FAQs":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "FAQs Content",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("Here are the frequently asked questions."),
          ],
        );
      default:
        return const SizedBox();
    }
  }
}
