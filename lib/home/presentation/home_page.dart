import 'package:counter_app_with_bloc/home/presentation/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Counter App with BloC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondPage(
                                title: '',
                              )));
                },
                child: const Text('Go to Second Page'))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().increment(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          // const SizedBox(width: 10),
          // FloatingActionButton(
          //   onPressed: () => context.read<CounterCubit>().decrement(),
          //   tooltip: 'Decrement',
          //   child: const Icon(Icons.remove),
          // ),
        ],
      ),
    );
  }
}
