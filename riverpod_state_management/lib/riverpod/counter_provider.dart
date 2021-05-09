import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateNotifierProvider(
  (ref) => CounterProvider(),
);

class CounterProvider extends StateNotifier<int> {
  CounterProvider() : super(0);

  void incrementCounter() => state++;

  void decrementCounter() => state--;
}
