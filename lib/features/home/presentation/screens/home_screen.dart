import 'package:flutter/material.dart';
import 'package:ososs/features/home/presentation/screens/home_screen_content.dart';
import 'package:ososs/features/home/presentation/state_management/notifier/home_screen_notifier.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/HomeScreen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final sn = HomeScreenNotifier();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ChangeNotifierProvider.value(
        value: sn,
        child: const HomeScreenContent(),
      ),
    );
  }

  @override
  void dispose() {
    sn.dispose();
    super.dispose();
  }
}
