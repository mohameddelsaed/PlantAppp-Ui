import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    super.key, required this.icon,
  });

  final String icon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height*0.03),
      padding: const EdgeInsets.all(KDefaultPadding /2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0,15),
            blurRadius: 22,
            color: KPrimaryColor.withOpacity(0.22),
          ),
          const BoxShadow(
            offset: Offset(-15,-15),
            color: Colors.white,
            blurRadius: 20,
          ),
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}