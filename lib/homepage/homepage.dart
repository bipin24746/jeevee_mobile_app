import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeevee_mobile_app/homepage/bestsellers/bestsellers.dart';
import 'package:jeevee_mobile_app/homepage/boardgames/boardSection.dart';
import 'package:jeevee_mobile_app/homepage/brandsPicked/brandspicked.dart';
import 'package:jeevee_mobile_app/homepage/homeCategory.dart';
import 'package:jeevee_mobile_app/homepage/mostSearched/searchedBrands.dart';
import 'package:jeevee_mobile_app/homepage/mostSearched/searchedText.dart';
import 'package:jeevee_mobile_app/homepage/weeklyBrand/weeklyBrand.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _offerController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  final List<String> imagePaths = List.generate(
    7,
    (_) => 'lib/assets/images/smartphones.jpg', // Single image repeated
  );

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _timer.cancel();
    _offerController.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      setState(() {
        _currentPage = (_currentPage + 1) % imagePaths.length;
      });
      _offerController.animateToPage(
        _currentPage,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageView.builder(
                  controller: _offerController,
                  scrollDirection: Axis.horizontal,
                  itemCount: imagePaths.length,
                  onPageChanged: (int index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        imagePaths[index],
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 50),
            HomeCategory(),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    "Brand of the Week",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [Icon(Icons.sticky_note_2), Text("view all")],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 60.0, left: 10),
                      child: Text("piligrim"),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Weeklybrand(),
            SearchedBrands(),
            Bestsellers(),
            Boardsection(),
            Brandspicked()
          ],
        ),
      ),
    );
  }
}
