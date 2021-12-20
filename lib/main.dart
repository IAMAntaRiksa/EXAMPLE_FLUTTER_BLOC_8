import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_kullanimi3/bloc/home_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
        theme: ThemeData(canvasColor: Colors.transparent),
        home: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepOrange,
                Colors.green,
                Colors.lightGreen,
              ],
            ),
          ),
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Example_Flutter_Bloc_8'),
            ),
            body: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is HomeLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state is HomeLoadingSucsess) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ' ${state.angka}',
                        style: const TextStyle(fontSize: 30),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              context.read<HomeBloc>().add(
                                    Decerement(decremnet: state.angka),
                                  );
                            },
                            icon: const Icon(Icons.minimize_sharp),
                          ),
                          const SizedBox(width: 30),
                          IconButton(
                            onPressed: () {
                              context.read<HomeBloc>().add(
                                    Increment(increment: state.angka),
                                  );
                            },
                            icon: const Icon(Icons.add),
                          )
                        ],
                      )
                    ],
                  );
                }
                return const CircularProgressIndicator();
              },
            ),
          ),
        ),
      ),
    );
  }
}
