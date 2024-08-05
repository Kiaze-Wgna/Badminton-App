import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'home/home_screen.dart';
import 'practice/practice_home.dart';
import 'compete/compete_home.dart';
import 'account/profile.dart';

class MyAppRoutes {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/practice',
        builder: (context, state) => const PracticePage(),
      ),
      GoRoute(
        path: '/compete',
        builder: (context, state) => const CompetePage(),
      ),
      GoRoute(
        path: '/account',
        builder: (context, state) => const ProfilePage(),
      ),
    ],
  );
}