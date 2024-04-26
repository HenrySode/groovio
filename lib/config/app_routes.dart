import 'package:groovio/screens/home_screen.dart';
import 'package:groovio/screens/profile_screen.dart';
import 'package:groovio/screens/search_screen.dart';

class AppRoutes {
  static final screens = {
    '/': (context) => const HomeScreen(),
    '/search': (context) => const SearchScreen(),
    '/profile': (context) => const ProfileScreen(),
  };

  static const home = '/';
  static const search = '/search';
  static const profile = '/profile';
}
