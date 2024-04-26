import 'package:flutter/material.dart';
import 'package:groovio/screens/home_screen.dart';
import 'package:groovio/screens/profile_screen.dart';
import 'package:groovio/screens/search_screen.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: SizedBox(
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, HomeScreen.routeName);
              },
              icon: const Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, SearchScreen.routeName);
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_circle,
                color: Colors.white,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.message,
                color: Colors.white,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, ProfileScreen.routeName);
              },
              icon: const Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
