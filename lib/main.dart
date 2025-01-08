import 'package:flutter/material.dart';
import 'package:global_clock/pages/choose_location.dart';
import 'package:global_clock/pages/home.dart';
import 'package:global_clock/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const Loading(),
      '/location': (context) => const ChooseLocation(),
      '/home': (context) => const Home(),
    },
  ));
}
