import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';

class BannerDiscoutWidget extends StatelessWidget {
  const BannerDiscoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20),
      width: double.infinity,
      height: MediaQueryManager(context).height / 5.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 68, 162, 229),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 220,
            top: 50,
            // bottom: 40,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white38,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FASHION',
                  style: FontManager.extraBoldStyle.copyWith(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // const SizedBox(height: 5),
                RichText(
                    text: TextSpan(
                        text: 'SALE ',
                        style: FontManager.extraBoldStyle.copyWith(
                          fontSize: 25,
                        ),
                        children: [
                      TextSpan(
                        text: 'OFFER',
                        style: FontManager.extraBoldStyle.copyWith(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      )
                    ])),
                Container(
                  width: double.infinity,
                  // color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: 'UPTO ',
                              style: FontManager.extraBoldStyle.copyWith(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                              children: [
                            TextSpan(
                              text: '35%',
                              style: FontManager.extraBoldStyle.copyWith(
                                fontSize: 25,
                                color: Colors.blue.shade600,
                              ),
                            )
                          ])),
                      Text(
                        'DISCOUNT',
                        style: FontManager.extraBoldStyle.copyWith(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
