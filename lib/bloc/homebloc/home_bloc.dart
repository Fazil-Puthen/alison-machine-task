import 'dart:async';

import 'package:alison/models/bannermodel.dart';
import 'package:alison/models/productmodel.dart';
import 'package:alison/services/fetchhomedetails.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<FetchHomeDetails>(fetchdetails);
  }

  FutureOr<void> fetchdetails(FetchHomeDetails event, Emitter<HomeState> emit) async{
    final services=ApiService();
    final result = await services.fetchHomeDetails();

    result.fold(
      (error) {
        emit(HomeLoaded(banners: [], products: [], errorMessage: error));
      },
      (data) {
        // Convert raw data to models
        List<Banner> banners = (data['banner1'] as List)
            .map((bannerJson) => Banner.fromJson(bannerJson))
            .toList();

        List<Product> products = (data['our_products'] as List)
            .map((productJson) => Product.fromJson(productJson))
            .toList();

        emit(HomeLoaded(
          banners: banners,
          products: products,
          errorMessage: null,
        ));
      },
    );
  }
}
