class ApiUrls {
  ApiUrls._();

  static const String POKEMON_LIST_API = 'https://pokeapi.co/api/v2/pokemon';
  static String pokemonImage(int index) =>
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$index.png';
}
