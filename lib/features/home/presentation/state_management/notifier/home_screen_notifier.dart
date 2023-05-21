import 'package:flutter/material.dart';

class HomeScreenNotifier extends ChangeNotifier {
  /// Variables
  final nameController = TextEditingController();

  /// Setters & Getters

  /// Methods

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }
}
