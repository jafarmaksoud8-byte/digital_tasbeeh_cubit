import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasbeeh_app/cubit/tasbeeh_cubit.dart';
import 'package:tasbeeh_app/ui/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasbeehCubit(),
      child: MaterialApp(home: HomeView()),
    );
  }
}
