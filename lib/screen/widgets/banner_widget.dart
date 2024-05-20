import 'package:flutter/material.dart';
import 'package:ratib_app/resources/styles/theme.dart';
// import 'package:ratib_app/config/styles/themes/color.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(22.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [kLinearPurple1, kLinearPurple2])),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'ٱلَّذِينَ ءَامَنُوا۟ وَتَطْمَئِنُّ قُلُوبُهُم بِذِكْرِ ٱللَّهِ ۗ أَلَا بِذِكْرِ ٱللَّهِ تَطْمَئِنُّ ٱلْقُلُوبُ',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Text('(الرعد: ٢٨)', style: TextStyle(fontSize: 25.0)),
              SizedBox(height: 35.0)
            ],
          ),
        ),
        Positioned(
            bottom: -40.0,
            right: 10.0,
            child: Image.asset('assets/images/quran-color.png', width: 220))
      ],
    );
  }
}
