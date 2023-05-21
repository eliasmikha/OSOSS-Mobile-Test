part of 'pokemon_cubit.dart';

@freezed
class PokemonState with _$PokemonState {
  const factory PokemonState.init() = PokemonInitState;

  const factory PokemonState.loading() = PokemonLoadingState;

  const factory PokemonState.error({
    void Function()? callback,
  }) = PokemonErrorState;

  const factory PokemonState.pokemonListLoaded({
    required PokemonListModel data,
  }) = PokemonListLoadedState;
}
