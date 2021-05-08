import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state_management/bloc/counter_bloc.dart';
import 'package:flutter_bloc_state_management/bloc/counter_event.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBLoc(),
      child: BlocConsumer<CounterBLoc, int>(
        listener: (context, state) {},
        builder: (context, state) {
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
                    '$state',
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
                  onPressed: () => context.read<CounterBLoc>().add(
                        IncrementCounter(),
                      ),
                  tooltip: 'Increment',
                  child: Icon(Icons.plus_one),
                ),
                FloatingActionButton(
                  onPressed: () => context.read<CounterBLoc>().add(
                        DecrementCounter(),
                      ),
                  tooltip: 'Increment',
                  child: Icon(Icons.exposure_minus_1),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
