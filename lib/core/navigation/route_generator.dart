import 'package:flutter/material.dart';
import 'package:ososs/features/pokemons/presentation/screens/pokemon_screen.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/more/shapes/presentation/screens/shapes_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return _screenRoute(
          settings: settings,
          createScreen: (param) => const HomeScreen(),
        );
      case ShapesScreen.routeName:
        if (settings.arguments is ShapesScreenParam)
          return _screenRoute(
            settings: settings,
            createScreen: (param) => ShapesScreen(
              param: param as ShapesScreenParam,
            ),
          );
        return _errorRoute();
      case PokemonScreen.routeName:
        return _screenRoute(
          settings: settings,
          createScreen: (param) => const PokemonScreen(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _screenRoute({
    required RouteSettings settings,
    required Widget createScreen(Object? param),
    Duration? transitionDuration,
  }) {
    try {
      final args = settings.arguments;

      return SwipeablePageRoute(
        canOnlySwipeFromEdge: true,
        transitionDuration: transitionDuration,
        settings: settings,
        builder: (context) {
          return createScreen(args);
        },
      );
    } catch (e) {
      return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text('Route Error!'),
          ),
        );
      },
    );
  }
}
