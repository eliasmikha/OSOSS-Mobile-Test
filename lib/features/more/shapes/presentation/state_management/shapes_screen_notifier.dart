import 'package:flutter/material.dart';
import 'package:ososs/features/more/shapes/presentation/screens/shapes_screen.dart';

class ShapesScreenNotifier extends ChangeNotifier {
  ShapesScreenNotifier(this.param);

  /// Fields
  late BuildContext context;
  final ShapesScreenParam param;

  int _selectedShape = 0;

  final shapeColor = [
    Colors.blue.shade900,
    Colors.blue.shade300,
    Colors.red,
  ];

  /// Setters & Getters
  int get selectedShape => _selectedShape;
  set selectedShape(int value) {
    _selectedShape = value;
    notifyListeners();
  }

  /// Methods
  void onBackButtonPressed() {
    if (Navigator.of(context).canPop())
      Navigator.of(context).pop();
    else
      debugPrint("can't pop screen" + ShapesScreen.routeName);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
