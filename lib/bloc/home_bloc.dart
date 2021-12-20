import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeLoadingSucsess(angka: 0)) {
    on<Decerement>(_addDecrement);
    on<Increment>(_addIcrement);
  }

  FutureOr<void> _addDecrement(Decerement event, emit) {
    emit(HomeLoading());
    emit(HomeLoadingSucsess(angka: event.decremnet - 1));
  }

  FutureOr<void> _addIcrement(Increment event, emit) {
    emit(HomeLoading());
    emit(HomeLoadingSucsess(angka: event.increment + 1));
  }
}
