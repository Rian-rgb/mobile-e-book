import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../themes.dart';

class RecentBook extends StatelessWidget {
  const RecentBook({
    super.key,
    required this.image,
    required this.title,
    required this.percent,
    required this.percentComplated,
  });

  final String image;
  final String title;
  final double percent;
  final String percentComplated;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: borderColorRecentBook),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 90,
          ),
          SizedBox(width: 18),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: semiBoldText14.copyWith(color: blackColor2),
              ),
              CircularPercentIndicator(
                reverse: true,
                radius: 50,
                lineWidth: 7,
                animation: true,
                percent: percent,
                progressColor: greenColor,
                circularStrokeCap: CircularStrokeCap.round,
              ),
              Text(
                percentComplated + ' Completed',
                style: semiBoldText12.copyWith(color: greyColorRecentBook),
              )
            ],
          )
        ],
      ),
    );
  }
}
