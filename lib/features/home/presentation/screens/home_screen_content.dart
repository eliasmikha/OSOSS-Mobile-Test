import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ososs/core/constants/app_constants.dart';
import 'package:ososs/features/home/presentation/state_management/notifier/home_screen_notifier.dart';

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

    return Container(
      height: 1.sh,
      width: 1.sw,
      padding: AppConstants.screenPadding,
      child: Column(
        children: [
          20.verticalSpace,

          // name text filed
          _buildNameField(),
        ],
      ),
    );
  }

  Widget _buildNameField() {
    return TextFormField(
      controller: sn.nameController,
      decoration: const InputDecoration(
        hintText: 'Enter your name',
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}
