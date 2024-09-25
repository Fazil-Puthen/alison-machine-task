import 'dart:async';

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

  FutureOr<void> fetchdetails(FetchHomeDetails event, Emitter<HomeState> emit) {
    final services=ApiService();
    print('calling the method to fetch api');
    services.fetchHomeDetails();
  }
}
