part of 'home_page_cubit.dart';

@immutable
sealed class HomePageState {}

final class HomePageInitial extends HomePageState {}

final class HomePageLoading extends HomePageState {}

final class HomePageError extends HomePageState {}

final class HomePageListUpdated extends HomePageState {}
