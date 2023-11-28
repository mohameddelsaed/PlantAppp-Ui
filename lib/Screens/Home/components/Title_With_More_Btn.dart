import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleWitheMoreBtn extends StatelessWidget {
  const TitleWitheMoreBtn({
    super.key, required this.title, required this.press,
  });
  final String title;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: KDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomerLine(text: title,),
          const Spacer(),
          TextButton(
              style: ButtonStyle(
                shape:MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                ),
                backgroundColor: MaterialStateColor.resolveWith((states) => KPrimaryColor),
              ),
              onPressed: press,
              child: const Text("More",style: TextStyle(color: Colors.white),)),
        ],
      ),
    );
  }
}

class TitleWithCustomerLine extends StatelessWidget {
  const TitleWithCustomerLine({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child:Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: KDefaultPadding/4),
            child: Text(text,style: const TextStyle(
              fontSize:20 ,
              fontWeight: FontWeight.bold,
            ),),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: KDefaultPadding/4),
              height: 7,
              color:  KPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ) ,
    );
  }
}