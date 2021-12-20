part of 'home_bloc.dart';

class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class Decerement extends HomeEvent {
  final int decremnet;
  const Decerement({
    required this.decremnet,
  });
}

class Increment extends HomeEvent {
  final int increment;
  const Increment({
    required this.increment,
  });
}
