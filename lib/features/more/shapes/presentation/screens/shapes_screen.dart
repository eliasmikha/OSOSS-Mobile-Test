import 'package:flutter/material.dart';
import 'package:ososs/features/more/shapes/presentation/screens/shapes_screen_content.dart';
import 'package:ososs/features/more/shapes/presentation/state_management/shapes_screen_notifier.dart';
import 'package:provider/provider.dart';

class ShapesScreenParam {
  final String yourName;

  ShapesScreenParam({required this.yourName});
}

class ShapesScreen extends StatefulWidget {
  static const String routeName = '/ShapesScreen';

  final ShapesScreenParam param;

  const ShapesScreen({
    Key? key,
    required this.param,
  }) : super(key: key);

  @override
  State<ShapesScreen> createState() => _ShapesScreenState();
}

class _ShapesScreenState extends State<ShapesScreen> {
  late final ShapesScreenNotifier sn;

  @override
  void initState() {
    super.initState();
    sn = ShapesScreenNotifier(widget.param);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: sn.onBackButtonPressed,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                Icons.arrow_back_ios,
              ),
              Text(
                'Animations',
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: ChangeNotifierProvider.value(
        value: sn,
        child: const ShapesScreenContent(),
      ),
    );
  }

  @override
  void dispose() {
    sn.dispose();
    super.dispose();
  }
}
