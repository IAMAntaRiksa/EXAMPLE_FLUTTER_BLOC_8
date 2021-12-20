part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoadingSucsess extends HomeState {
  final int angka;
  const HomeLoadingSucsess({
    required this.angka,
  });
  @override
  List<Object> get props => [angka];
}
