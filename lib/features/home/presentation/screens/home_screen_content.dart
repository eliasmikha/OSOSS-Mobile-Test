import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_constants.dart';
import '../state_management/notifier/home_screen_notifier.dart';

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({super.key});

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  late HomeScreenNotifier sn;

  @override
  Widget build(BuildContext context) {
    sn = context.read<HomeScreenNotifier>();
    sn.context = context;

    return Container(
      height: 1.sh,
      width: 1.sw,
      padding: AppConstants.screenPadding,
      child: Form(
        key: sn.formKey,
        child: Column(
          children: [
            20.verticalSpace,

            // name text filed
            _buildNameField(),
            50.verticalSpace,

            // name viewer
            _buildNameViewer(),

            const Spacer(),

            // clear text button
            _buildClearTextButton(),
            20.verticalSpace,

            // page 1 Button
            _buildPageButton(
              buttonText: 'Go to page 1',
              onPressed: sn.onPage1ButtonPressed,
            ),
            20.verticalSpace,

            // page 2 Button
            _buildPageButton(
              buttonText: 'Go to page 2',
              onPressed: () {},
              backgroundColor: Colors.blue.shade300,
            ),
            20.verticalSpace,
          ],
        ),
      ),
    );
  }

  Widget _buildPageButton({
    required void Function() onPressed,
    required String buttonText,
    Color? backgroundColor,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Container(
        width: 1.sw,
        padding: EdgeInsets.symmetric(
          vertical: 15.h,
        ),
        child: Align(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 18.sp,
            ),
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.blue.shade900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
    );
  }

  Widget _buildClearTextButton() {
    return TextButton(
      onPressed: sn.clearNameFieldText,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.delete,
            color: Colors.red,
            size: 20.sp,
          ),
          10.horizontalSpace,
          Text(
            "Clear text",
            style: TextStyle(
              color: Colors.red,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNameViewer() {
    return Builder(
      builder: (context) {
        context.select<HomeScreenNotifier, String>((p) => p.name);

        return Text(
          sn.name.isNotEmpty ? sn.name : "Your name",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    );
  }

  Widget _buildNameField() {
    return TextFormField(
      controller: sn.nameController,
      focusNode: sn.nameFocusNode,
      key: sn.nameKey,
      decoration: const InputDecoration(
        hintText: 'Enter your name',
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
      ),
      onChanged: (value) {
        sn.name = value;
        sn.nameKey.currentState?.validate();
      },
      onFieldSubmitted: (value) {
        sn.formKey.currentState?.validate();
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "This field can't be empty!";
        }
        return null;
      },
    );
  }
}
