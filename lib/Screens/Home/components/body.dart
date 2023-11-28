import 'package:flutter/material.dart';
import 'package:plant_app/Screens/Home/components/Title_With_More_Btn.dart';
import 'package:plant_app/Screens/Home/components/featured_plants.dart';
import 'package:plant_app/Screens/Home/components/header_with_search.dart';
import 'package:plant_app/Screens/Home/components/recommended_plant_card.dart';
import 'package:plant_app/constants.dart';
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          HeaderWithSearch(size: size),
          const SizedBox(height: 30,),
          TitleWitheMoreBtn(title: "Recommended",press: (){},),
          const RecommendedPlants(),
          TitleWitheMoreBtn(title: "Featured Plants",press: (){},),
          const FeaturedPlants(),
          const SizedBox(height: KDefaultPadding,),
        ],
      ),
    );
  }
}






