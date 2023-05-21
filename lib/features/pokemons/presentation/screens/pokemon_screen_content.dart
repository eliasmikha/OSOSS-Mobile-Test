import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/constants/api_urls.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/constants/enums/http_method.dart';
import '../../../../core/net/http_client.dart';
import '../../data/model/pokemon_list_model.dart';
import '../state_management/cubit/pokemon_cubit.dart';
import '../state_management/provider/pokemon_screen_notifier.dart';

class PokemonScreenContent extends StatefulWidget {
  const PokemonScreenContent({super.key});

  @override
  State<PokemonScreenContent> createState() => _PokemonScreenContentState();
}

class _PokemonScreenContentState extends State<PokemonScreenContent> {
  late PokemonScreenNotifier sn;

  @override
  Widget build(BuildContext context) {
    sn = context.watch<PokemonScreenNotifier>();
    sn.context = context;

    return Container(
      height: 1.sh,
      width: 1.sw,
      child: BlocConsumer<PokemonCubit, PokemonState>(
        bloc: sn.pokemonCubit,
        listener: (context, state) {
          state.whenOrNull(
            pokemonListLoaded: (data) {
              sn.pokemons = data.results;
              sn.nextUrl = data.next;
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            init: () => _buildLoadingWidget(),
            loading: () => _buildLoadingWidget(),
            error: (callback) => Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 50.sp,
                  ),
                  10.verticalSpace,
                  Text(
                    'Error Occured!',
                    style: TextStyle(
                      fontSize: 20.sp,
                    ),
                  ),
                  20.verticalSpace,
                  ElevatedButton(
                    onPressed: callback,
                    child: const Text('Retry'),
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding: EdgeInsets.symmetric(
                        vertical: 10.h,
                        horizontal: 20.w,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            pokemonListLoaded: (data) => _buildPaginationWidget(),
            orElse: () => const Center(child: Text('screen not implemented!')),
          );
        },
      ),
    );
  }

  Widget _buildLoadingWidget() {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(
        vertical: 20.h,
      ).add(AppConstants.screenPadding),
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Container(
            width: 1.sw,
            height: 150.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => 20.verticalSpace,
      itemCount: 15,
    );
  }

  Widget _buildPaginationWidget() {
    return SmartRefresher(
      controller: sn.controller,
      enablePullUp: true,
      onRefresh: () {
        sn.nextUrl = null;
        sn.getPokemons();
      },
      onLoading: () async {
        try {
          final result = await HttpClient.sendRequest(
            httpMethod: HttpMethod.Get,
            url: sn.nextUrl != null ? sn.nextUrl! : ApiUrls.POKEMON_LIST_API,
            queryParameters: sn.nextUrl == null
                ? {
                    "limit": 10,
                    "offset": 0,
                  }
                : null,
          );
          final jsonMap = json.decode(json.encode(result.data));
          final model = PokemonListModel.fromMap(jsonMap);
          sn.pokemons = sn.pokemons + model.results;
          sn.nextUrl = model.next;
          sn.controller.loadComplete();
        } catch (e) {
          debugPrint(e.toString());
          sn.controller.loadFailed();
        }
      },
      child: _buildPokemons(),
    );
  }

  ListView _buildPokemons() {
    return ListView.separated(
      padding: EdgeInsets.symmetric(
        vertical: 20.h,
      ).add(AppConstants.screenPadding),
      itemBuilder: (context, index) {
        return Container(
          width: 1.sw,
          height: 150.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.r),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 1,
                offset: Offset(2, 5),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildPokemonImage(index),
              20.horizontalSpace,
              Expanded(
                flex: 2,
                child: Text(
                  sn.pokemons[index].name ?? "",
                  style: TextStyle(
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => 20.verticalSpace,
      itemCount: sn.pokemons.length,
    );
  }

  Widget _buildPokemonImage(int index) {
    return Container(
      height: 150.h,
      width: 150.h,
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: CachedNetworkImage(
        imageUrl: ApiUrls.pokemonImage(index + 1),
        alignment: Alignment.center,
        placeholder: (context, url) {
          return Shimmer.fromColors(
            baseColor: Colors.grey.shade100,
            highlightColor: Colors.grey.shade400,
            child: Image.asset(
              AppConstants.PLACEHOLDER_IMG,
              width: 1.sw,
              colorBlendMode: BlendMode.srcIn,
            ),
          );
        },
        errorWidget: (context, url, error) {
          return Image.asset(
            AppConstants.ERROR_PLACEHOLDER_IMG,
            width: 1.sw,
            colorBlendMode: BlendMode.srcIn,
          );
        },
      ),
    );
  }
}
