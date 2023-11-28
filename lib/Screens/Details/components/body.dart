import 'package:flutter/material.dart';
import 'package:plant_app/Screens/Details/components/buy_des_card.dart';
import 'package:plant_app/Screens/Details/components/image_and_icon.dart';
import 'package:plant_app/Screens/Details/components/title_and_price.dart';
import 'package:plant_app/constants.dart';
class BodyD extends StatelessWidget {
  const BodyD({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          ImageAndIcons(),
          TitleAndPrice(
            title:"Angelica" ,
            price: 440,
            country:"Russia" ,
          ),
          SizedBox(height: KDefaultPadding,),
          BuyCard(),
          SizedBox(height: KDefaultPadding*2,),
        ],
      ),
    );
  }
}







