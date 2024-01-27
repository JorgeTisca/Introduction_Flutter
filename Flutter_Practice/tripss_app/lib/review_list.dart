import 'package:flutter/material.dart';
import 'package:tripss_app/review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review('assets/images/sasuke.jpg', 'Sasuke', '1 Review 5 Photos',
            'There is an amazing place in Sri Lanka', 4.5),
        Review('assets/images/moon.jpg', 'Moon', '1 Review 10 Photos',
            'There is a boring place in Sri Lanka and see a lot trash', 2),
        Review('assets/images/megaman.jpg', 'Megaman', '1 Review 1 Photos',
            'There is Excelent place in Sri Lanka', 5),
        Review('assets/images/sasuke.jpg', 'Sasuke', '1 Review 5 Photos',
            'There is an amazing place in Sri Lanka', 4.5),
        Review('assets/images/moon.jpg', 'Moon', '1 Review 10 Photos',
            'There is a boring place in Sri Lanka and see a lot trash', 2),
        Review('assets/images/megaman.jpg', 'Megaman', '1 Review 1 Photos',
            'There is Excelent place in Sri Lanka', 5),
        Review('assets/images/sasuke.jpg', 'Sasuke', '1 Review 5 Photos',
            'There is an amazing place in Sri Lanka', 4.5),
        Review('assets/images/moon.jpg', 'Moon', '1 Review 10 Photos',
            'There is a boring place in Sri Lanka and see a lot trash', 2),
        Review('assets/images/megaman.jpg', 'Megaman', '1 Review 1 Photos',
            'There is Excelent place in Sri Lanka', 5)
      ],
    );
  }
}
