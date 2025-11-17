import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';



class Preveiw extends StatelessWidget {
  final String title ;
  final String subTitle;
  const Preveiw({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title,style: Styles.Font18W600,),
          Text(subTitle,style: Styles.Font16W200,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.amber,),
              RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: "4.8",
                          style: Styles.Font16W400
                      ),
                      TextSpan(
                          text: " (2390)",
                          style: Styles.Font16W400.copyWith(color: Colors.grey)
                      ),
                    ]
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
      Container(
        height: 40,

        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, 2),
              )
            ]
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [

            Text(
              "19.99\$",
              style: Styles.Font14W600.copyWith(color: Colors.black),
            ),


            Container(
              height: 20,
              width: 1.5,
              margin: EdgeInsets.symmetric(horizontal: 10),
              color: Colors.grey.withOpacity(0.4),
            ),

            // Free Preview
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              decoration: BoxDecoration(
                color: Color(0xFFDC9056),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                "Free Preview",
                style: Styles.Font14W600.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      )

      ],
      ),
    );
  }
}
