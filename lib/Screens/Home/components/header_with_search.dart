import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';


class HeaderWithSearch extends StatelessWidget {
  const HeaderWithSearch({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height*0.2,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: KDefaultPadding,
              right: KDefaultPadding,
              bottom: 36 + KDefaultPadding,
            ),
            alignment: Alignment.center,
            height: size.height*0.2-27,
            decoration: const BoxDecoration(
              color: KPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(36),
                bottomLeft: Radius.circular(36),
              ),
            ),
            child: Row(
              children: [
                Text("Hi Uishopy!",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child:Container(
              margin: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
              padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.circular(20),
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
                  Expanded(
                    child: TextField(
                      onChanged: (value){},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: KPrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
