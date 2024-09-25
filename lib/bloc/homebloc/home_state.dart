part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

class HomeLoaded extends HomeState {
  final List<Banner> banners;
  final List<Product> products;
  final String? errorMessage;

  HomeLoaded({required this.banners, required this.products,this.errorMessage});
}