import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:ososs/features/pokemons/data/model/pokemon_model.dart';

class PokemonListModel {
  final int? count;
  final String? next;
  final String? previous;
  final List<PokemonModel> results;

  PokemonListModel({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  PokemonListModel copyWith({
    int? count,
    String? next,
    String? previous,
    List<PokemonModel>? results,
  }) {
    return PokemonListModel(
      count: count ?? this.count,
      next: next ?? this.next,
      previous: previous ?? this.previous,
      results: results ?? this.results,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results.map((x) => x.toMap()).toList(),
    };
  }

  factory PokemonListModel.fromMap(Map<String, dynamic>? map) {
    return PokemonListModel(
      count: map?['count']?.toInt(),
      next: map?['next'],
      previous: map?['previous'],
      results: map?['results'] == null
          ? []
          : List<PokemonModel>.from(
              map?['results']?.map((x) => PokemonModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonListModel.fromJson(String source) =>
      PokemonListModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PokemonListModel(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PokemonListModel &&
        other.count == count &&
        other.next == next &&
        other.previous == previous &&
        listEquals(other.results, results);
  }

  @override
  int get hashCode {
    return count.hashCode ^ next.hashCode ^ previous.hashCode ^ results.hashCode;
  }
}
