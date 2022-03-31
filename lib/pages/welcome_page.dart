import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_travel/cubit/app_cubits.dart';

import 'package:keep_travel/widgets/app_large_text.dart';
import 'package:keep_travel/widgets/app_text.dart';
import 'package:keep_travel/widgets/responsive_button.dart';
import '../misc/colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List _images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];

  List _texts = [
    "1 Mountain hikes give you an incredible sense of freedom along with endurance tests",
    "2 Mountain hikes give you an incredible sense of freedom along with endurance tests",
    "3 Mountain hikes give you an incredible sense of freedom along with endurance tests",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/" + _images[index]),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 120, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "Trips"),
                      AppText(
                        text: "Mountain",
                        size: 30,
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 250,
                        child: AppText(
                          text: _texts[index],
                          color: AppColors.textColor2,
                          size: 14,
                        ),
                      ),
                      SizedBox(height: 40),
                      GestureDetector(
                        child: Container(
                            width: 200,
                            child: Row(
                              children: [
                                ResponsiveButton(width: 120),
                              ],
                            )),
                        onTap: () {
                          BlocProvider.of<AppCubits>(context).getData();
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      for (int i = 0; i < _images.length; i++)
                        Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          height: i == index ? 18 : 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: i == index
                                ? AppColors.mainColor
                                : AppColors.mainColor.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
