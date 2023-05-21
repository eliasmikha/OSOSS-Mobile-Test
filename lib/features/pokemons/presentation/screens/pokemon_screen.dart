import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state_management/provider/pokemon_screen_notifier.dart';
import 'pokemon_screen_content.dart';

class PokemonScreen extends StatefulWidget {
  static const String routeName = '/PokemonScreen';
  const PokemonScreen({Key? key}) : super(key: key);

  @override
  State<PokemonScreen> createState() => _PokemonScreenState();
}

class _PokemonScreenState extends State<PokemonScreen> {
  late final PokemonScreenNotifier sn;

  @override
  void initState() {
    super.initState();
    sn = PokemonScreenNotifier();
    sn.getPokemons();
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
                'Pokemon\'s',
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: ChangeNotifierProvider.value(
        value: sn,
        child: const PokemonScreenContent(),
      ),
    );
  }

  @override
  void dispose() {
    sn.dispose();
    super.dispose();
  }
}
