import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/colors.dart';
import 'package:flutter_svg/svg.dart';

class ReviewCardContent extends StatelessWidget {
  const ReviewCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.transparent,
                child: SvgPicture.asset(
                  'assets/images/user_review.svg',
                  width: 24,
                  height: 24,
                ),
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Omar Ali',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: kprimaryColor,
                    ),
                  ),
                  SizedBox(height: 2),
                  Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: Color(0xFFFCD53F),
                        size: 12,
                      ),
                      SizedBox(width: 2),
                      Text(
                        '4.5',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: ktextColor2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: kprimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
