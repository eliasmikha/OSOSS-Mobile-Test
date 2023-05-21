import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ososs/core/constants/app_constants.dart';
import 'package:ososs/features/more/shapes/presentation/state_management/shapes_screen_notifier.dart';

import '../state_management/shapes_screen_notifier.dart';

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

          const Spacer(),

          // shape picker
          _buildShapePicker(),
          20.verticalSpace,
        ],
      ),
    );
  }

  Widget _buildShapePicker() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i < 3; i++) ...{
          Material(
            color: sn.shapeColor[i],
            borderRadius: i == 1
                ? BorderRadius.circular(25.r)
                : i == 2
                    ? BorderRadius.circular(500.r)
                    : null,
            child: InkWell(
              borderRadius: i == 1
                  ? BorderRadius.circular(25.r)
                  : i == 2
                      ? BorderRadius.circular(500.r)
                      : null,
              onTap: () {
                sn.selectedShape = i;
              },
              child: SizedBox(
                height: 75.w,
                width: 75.w,
              ),
            ),
          ),
        }
      ],
    );
  }

  Widget _buildAnimatedShape() {
    return Builder(
      builder: (context) {
        context.select<ShapesScreenNotifier, int>((p) => p.selectedShape);

        return AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          height: .8.sw,
          width: .8.sw,
          decoration: BoxDecoration(
            color: sn.shapeColor[sn.selectedShape],
            borderRadius: sn.selectedShape == 1
                ? BorderRadius.circular(45.r)
                : sn.selectedShape == 2
                    ? BorderRadius.circular(500.r)
                    : null,
          ),
        );
      },
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
