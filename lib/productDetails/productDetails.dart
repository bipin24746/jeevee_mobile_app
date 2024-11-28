import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeevee_mobile_app/productDetails/containers/description.dart';
import 'package:jeevee_mobile_app/productDetails/containers/description_list.dart';
import 'package:jeevee_mobile_app/productDetails/containers/image.dart';
import 'package:jeevee_mobile_app/productDetails/containers/relatedProducts/relatedProducts.dart';
import 'package:jeevee_mobile_app/productDetails/containers/titleSection.dart';

class Productdetails extends StatefulWidget {
  const Productdetails({super.key});

  @override
  State<Productdetails> createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Product Details"),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImage(),
            TitleSection(),
            Desc(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Related Products",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Relatedproducts()
          ],
        ),
      ),
    );
  }
}
