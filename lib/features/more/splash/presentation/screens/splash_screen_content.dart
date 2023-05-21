import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ososs/core/constants/app_constants.dart';
import 'package:ososs/features/home/presentation/screens/home_screen.dart';

class SplashScreenContent extends StatefulWidget {
  const SplashScreenContent({super.key});

  @override
  State<SplashScreenContent> createState() => _SplashScreenContentState();
}

class _SplashScreenContentState extends State<SplashScreenContent> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.sh,
      width: 1.sw,
      child: Stack(
        children: [
          // flutter logo
          Positioned.fill(
            child: Center(
              child: SvgPicture.asset(
                AppConstants.FLUTTER_LOGO_SVG,
                height: 100.h,
                width: 100.w,
              ),
            ),
          ),

          // loading indicator
          Positioned(
            bottom: .2.sh,
            left: 0,
            right: 0,
            child: const Align(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
        ],
      ),
    );
  }
}
