import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trendy_closet/core/resources/style_manager.dart';
import 'package:trendy_closet/core/widgets/custom_elevated_button.dart';

import 'core/resources/assets_manager.dart';
import 'core/resources/color_manager.dart';
import 'core/resources/routes_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.asset(
            Assets.splash,
            fit: BoxFit.cover, // أو BoxFit.fill حسب تصميم الصورة
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            child: SizedBox(
              width: double.infinity,

              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text(
                      'Luxury',
                      style: getSemiBoldStyle(
                        color: ColorManager.lightGrey,
                        fontSize: 40,
                      ).copyWith(fontStyle: FontStyle.italic),
                    ),
                    Text(
                      'Fashion',
                      style: getSemiBoldStyle(
                        fontSize: 40,
                        color: ColorManager.lightGrey,
                      ).copyWith(fontStyle: FontStyle.italic),
                    ),
                    Text(
                      '& Accessories',
                      style: getSemiBoldStyle(
                        color: ColorManager.lightGrey,
                        fontSize: 40,
                      ),
                    ),
                    Spacer(),
                
                    CustomElevatedButton(
                      buttonColor: ColorManager.black.withAlpha(30),
                      title: 'Explore Collection',
                      onPressed: () {},
                    ),
                   SizedBox(height: 100,)
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
