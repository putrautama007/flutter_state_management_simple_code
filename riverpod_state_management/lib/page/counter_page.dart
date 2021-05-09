import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state_management/riverpod/counter_provider.dart';

class CounterPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _count = watch(counterProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_count',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read(counterProvider.notifier).incrementCounter(),
            tooltip: 'Increment',
            child: Icon(Icons.plus_one),
          ),
          FloatingActionButton(
            onPressed: () => context.read(counterProvider.notifier).decrementCounter(),
            tooltip: 'Decrement',
            child: Icon(Icons.exposure_minus_1),
          ),
        ],
      ),
    );
  }
}
