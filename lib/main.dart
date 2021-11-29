import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_joker/application/jokes/bloc/joke_bloc.dart';
import 'package:the_joker/application/jokes/data_provider/joke_provider.dart';
import 'package:the_joker/application/jokes/repository/joke_repo.dart';
import 'package:the_joker/application/jokes/screens/joke_screen.dart';
import 'package:the_joker/screens/Categories.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final jokeRepo = JokeRepo(dataprovider: JokeProvider(dio: Dio()));

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => JokeBloc(jokeRepo),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple),
        debugShowCheckedModeBanner: false,
        initialRoute: JokeScreen.routeName,
        routes: {
          JokeScreen.routeName: (BuildContext context) => JokeScreen(),
          Categories.routeName: (BuildContext context) => Categories(),
        },
      ),
    );
  }
}
