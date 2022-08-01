// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/services/services_locator.dart';
import 'package:movies_app/movies/presentation/controller/movies_cubit.dart';
import 'package:movies_app/movies/presentation/screens/movies_screen.dart';

void main() {
  ServicesLocator().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) {
            return MoviesCubit(sl() , sl())..getPlayingNowMovies()..getPopularMovies();
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainMoviesScreen(),
      ),
    );
  }
}
