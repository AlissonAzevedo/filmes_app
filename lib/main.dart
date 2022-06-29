import 'package:flutter/material.dart';
import 'package:filmes_app/core/inject/inject.dart';

import '/features/movie/presentation/ui/pages/home_page.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  Inject.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final textTheme = Theme.of(context).textTheme;
    
    return MaterialApp(
      title: 'App Filmes Marvel',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}