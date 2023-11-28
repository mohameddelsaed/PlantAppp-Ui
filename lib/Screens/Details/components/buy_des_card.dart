import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class BuyCard extends StatelessWidget {
  const BuyCard({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith((states) => KPrimaryColor),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.only(
                    topRight:Radius.circular(20),
                  ),
                ),
              ),
            ),
            onPressed: (){},
            child: const Text("Buy Now",style: TextStyle(color: Colors.white,fontSize: 16),),
          ),
        ),
        Expanded(
          child:  TextButton(
            onPressed: (){},
            child: const Text(
              "Description",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
