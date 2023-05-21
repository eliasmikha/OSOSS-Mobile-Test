import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/constants/api_urls.dart';
import '../../../../../core/constants/enums/http_method.dart';
import '../../../../../core/net/http_client.dart';
import '../../../data/model/pokemon_list_model.dart';

part 'pokemon_cubit.freezed.dart';
part 'pokemon_state.dart';

class PokemonCubit extends Cubit<PokemonState> {
  PokemonCubit() : super(const PokemonState.init());

  void getPokemons({String? url, int? limit, int? offset}) async {
    emit(const PokemonState.loading());
    try {
      final result = await HttpClient.sendRequest(
        httpMethod: HttpMethod.Get,
        url: url != null ? url : ApiUrls.POKEMON_LIST_API,
        queryParameters: url == null
            ? {
                "limit": limit,
                "offset": offset,
              }
            : null,
      );
      final jsonMap = json.decode(json.encode(result.data));
      emit(
        PokemonState.pokemonListLoaded(
          data: PokemonListModel.fromMap(jsonMap),
        ),
      );
    } catch (e) {
      emit(
        PokemonState.error(
          callback: () => getPokemons(url: url, limit: limit, offset: offset),
        ),
      );
    }
  }
}
