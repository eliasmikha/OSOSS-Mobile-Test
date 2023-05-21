import 'package:flutter/material.dart';

import '../../../../more/shapes/presentation/screens/shapes_screen.dart';

class HomeScreenNotifier extends ChangeNotifier {
  /// Fields
  late BuildContext context;

  final formKey = GlobalKey<FormState>();
  final nameKey = GlobalKey<FormFieldState<String>>();
  final nameController = TextEditingController();
  final nameFocusNode = FocusNode();

  String _name = '';

  /// Setters & Getters
  String get name => _name;
  set name(String value) {
    _name = value;
    notifyListeners();
  }

  /// Methods
  void clearNameFieldText() {
    nameController.text = '';
    _name = '';
    notifyListeners();
  }

  void onPage1ButtonPressed() {
    Navigator.of(context).pushNamed(
      ShapesScreen.routeName,
      arguments: ShapesScreenParam(
        yourName: _name.isNotEmpty ? _name : "Your name",
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    nameFocusNode.dispose();
    super.dispose();
  }
}
