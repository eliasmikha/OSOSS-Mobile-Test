import 'package:flutter/material.dart';
import 'package:ososs/features/pokemons/data/model/pokemon_model.dart';
import 'package:ososs/features/pokemons/presentation/state_management/cubit/pokemon_cubit.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

import '../../screens/pokemon_screen.dart';

class PokemonScreenNotifier extends ChangeNotifier {
  /// Fields
  late BuildContext context;
  final pokemonCubit = PokemonCubit();
  List<PokemonModel> _pokemons = [];
  String? nextUrl;
  final controller = RefreshController();

  /// Setters & Getters
  List<PokemonModel> get pokemons => _pokemons;
  set pokemons(List<PokemonModel> newList) {
    _pokemons = newList;
    notifyListeners();
  }

  /// Methods
  void onBackButtonPressed() {
    if (Navigator.of(context).canPop())
      Navigator.of(context).pop();
    else
      debugPrint("can't pop screen" + PokemonScreen.routeName);
  }

  void getPokemons() {
    print("nextUrl: $nextUrl");
    pokemonCubit.getPokemons(
      url: nextUrl,
      limit: 10,
      offset: 0,
    );
  }

  @override
  void dispose() {
    pokemonCubit.close();
    controller.dispose();
    super.dispose();
  }
}
