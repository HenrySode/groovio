// ignore_for_file: equal_keys_in_map

import 'package:flutter/material.dart';
import 'package:groovio/screens/home_screen.dart';
import 'package:groovio/screens/profile_screen.dart';
import 'package:groovio/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        ProfileScreen.routeName: (context) => const ProfileScreen(),
        SearchScreen.routeName: (context) => const SearchScreen(),
      },
    );
  }
}
