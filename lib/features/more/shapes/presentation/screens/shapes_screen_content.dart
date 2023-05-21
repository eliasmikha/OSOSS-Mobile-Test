import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ososs/core/constants/app_constants.dart';
import 'package:ososs/features/more/shapes/presentation/state_management/shapes_screen_notifier.dart';

class ShapesScreenContent extends StatefulWidget {
  const ShapesScreenContent({Key? key}) : super(key: key);

  @override
  State<ShapesScreenContent> createState() => _ShapesScreenContentState();
}

class _ShapesScreenContentState extends State<ShapesScreenContent> {
  late ShapesScreenNotifier sn;

  @override
  Widget build(BuildContext context) {
    sn = context.read<ShapesScreenNotifier>();
    sn.context = context;

    return Container(
      height: 1.sh,
      width: 1.sw,
      padding: AppConstants.screenPadding,
      child: Column(
        children: [
          20.verticalSpace,

          // your name text from previous screen
          _buildYourNameText(),
          50.verticalSpace,

          // the animated shape
          _buildAnimatedShape(),
        ],
      ),
    );
  }

  Widget _buildAnimatedShape() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
    );
  }

  Widget _buildYourNameText() {
    return Text(
      sn.param.yourName,
      style: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
