import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/Screens/Details/components/icon_card.dart';
import 'package:plant_app/constants.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: KDefaultPadding * 3),
      child: SizedBox(
        height: size.height*0.8,
        child: Row(
          children: [
            Expanded(
                child: Padding(
                  padding:  const EdgeInsets.symmetric(vertical: KDefaultPadding*3),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding: const EdgeInsets.symmetric(horizontal:KDefaultPadding ),
                          onPressed: (){Navigator.pop(context);},
                          icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        ),
                      ),
                      const Spacer(),
                      const IconCard(icon: "assets/icons/sun.svg",),
                      const IconCard(icon: "assets/icons/icon_2.svg",),
                      const IconCard(icon: "assets/icons/icon_3.svg",),
                      const IconCard(icon: "assets/icons/icon_4.svg",),
                    ],
                  ),
                )),
            Container(
              height: size.height*0.8,
              width: size.width*0.75,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0,10),
                    blurRadius: 60,
                    color: KPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: const DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/img.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}