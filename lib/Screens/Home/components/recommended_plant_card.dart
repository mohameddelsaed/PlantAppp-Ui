import 'package:flutter/material.dart';
import 'package:plant_app/Screens/Details/details_screen.dart';
import 'package:plant_app/constants.dart';


class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard({
    super.key, required this.image, required this.title, required this.country, required this.price, required this.press,

  });
  final String image, title , country;
  final int price;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: KDefaultPadding,
        top: KDefaultPadding/2,
        bottom: KDefaultPadding *2.5,
      ),
      width: size.width*0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(KDefaultPadding/2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0,10),
                    blurRadius: 50,
                    color: KPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: KPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(color: KPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "russia",
            press: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context)=>const DetailsScreen()
              ),
            );},
            price: 440,
          ),
          RecommendedPlantCard(
            image: "assets/images/image_2.png",
            title: "angelica",
            country: "russia",
            press: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context)=>const DetailsScreen()
              ),
            );},
            price: 500,
          ),
          RecommendedPlantCard(
            image: "assets/images/image_3.png",
            title: "Samantha",
            country: "russia",
            press: ()
            {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context)=>const DetailsScreen()
                  ),
              );
            },
            price: 440,
          ),
        ],
      ),
    );
  }
}