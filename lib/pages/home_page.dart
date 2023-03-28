import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';
import '../widgets/buttons_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Bloc Pattern"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Counter value is :',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 10),
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              if (state is CounterInitial) {
                return const Text(
                  '0',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 30),
                );
              } else if (state is CounterValueChangedState) {
                return Text(
                  state.counter.toString(),
                  style: const TextStyle(color: Colors.blueGrey, fontSize: 30),
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ],
      )),
      floatingActionButton: const ButtonsWidget(),
    );
  }
}
