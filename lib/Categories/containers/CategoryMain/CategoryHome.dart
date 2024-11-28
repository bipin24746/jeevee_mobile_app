import 'package:flutter/material.dart';
import 'package:jeevee_mobile_app/Categories/containers/BabyFoods/baby_foods.dart';
import 'package:jeevee_mobile_app/Categories/containers/BabyFormula/baby_formula.dart';
import 'package:jeevee_mobile_app/Categories/containers/CategoryMain/category_List.dart';
import 'package:jeevee_mobile_app/Categories/containers/Cleansers/cleansers.dart';
import 'package:jeevee_mobile_app/Categories/containers/Conditioners/conditioners.dart';
import 'package:jeevee_mobile_app/Categories/containers/Diapers/diapers.dart';
import 'package:jeevee_mobile_app/Categories/containers/FaceMoisturizer/face_moisturizers.dart';
import 'package:jeevee_mobile_app/Categories/containers/FaceSunscreen/face_sunscreen.dart';
import 'package:jeevee_mobile_app/Categories/containers/FaceWash/facewash.dart';
import 'package:jeevee_mobile_app/Categories/containers/FeedingBottleBowls/feeding_bottlebowls.dart';
import 'package:jeevee_mobile_app/Categories/containers/Gels/gels.dart';
import 'package:jeevee_mobile_app/Categories/containers/HairCreams&Masks/haircreams.dart';
import 'package:jeevee_mobile_app/Categories/containers/HairOil/hairoil.dart';
import 'package:jeevee_mobile_app/Categories/containers/HairSerum/hairSerum.dart';
import 'package:jeevee_mobile_app/Categories/containers/Kits&Combo/kitsCombo.dart';
import 'package:jeevee_mobile_app/Categories/containers/Lotions&Creams/lotionCreams.dart';
import 'package:jeevee_mobile_app/Categories/containers/PersonalCare/personal_care.dart';
import 'package:jeevee_mobile_app/Categories/containers/Shampoo/shampoo.dart';
import 'package:jeevee_mobile_app/Categories/containers/Wipes&Buds/wipesBuds.dart';
import 'package:jeevee_mobile_app/Categories/containers/WomensFragrances/womenFragrances.dart';
import 'package:jeevee_mobile_app/Categories/containers/mensFragrances/menFragrances.dart';
import 'package:jeevee_mobile_app/Categories/containers/serums_essence/categorySerums.dart';
import 'package:jeevee_mobile_app/Navbar/navbar.dart';

class CategoryMainPage extends StatefulWidget {
  const CategoryMainPage({super.key});

  @override
  State<CategoryMainPage> createState() => _CategoryMainPageState();
}

class _CategoryMainPageState extends State<CategoryMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MakeUpList(),
            SerumsEssence(),
            PersonalCare(),
            FaceSunscreen(),
            FaceMoisturizers(),
            Facewash(),
            Lotioncreams(),
            Cleansers(),
            Haircreams(),
            Shampoo(),
            Womenfragrances(),
            Menfragrances(),
            Kitscombo(),
            Hairoil(),
            Hairserum(),
            Conditioners(),
            Diapers(),
            BabyFormula(),
            Wipesbuds(),
            BabyFoods(),
            FeedingBottlebowls(),
          ],
        ),
      ),
    );
  }
}
