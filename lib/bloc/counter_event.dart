// To avoid importing the 3 files of the bloc folder
part of 'counter_bloc.dart';

@immutable //All the attributs should be final
abstract class CounterEvent {}

class IncreamentEvent extends CounterEvent {}

class DecreamentEvent extends CounterEvent {
  
}
class ResetEvent extends CounterEvent {}