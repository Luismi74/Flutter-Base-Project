import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// TODO: Replace with actual auth provider
final authProvider = StateProvider<bool>((ref) => false);

final goRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    redirect: (context, state) {
      // Example redirection logic
      // final isLoggedIn = authState;
      // final isLoggingIn = state.matchedLocation == '/login';
      // if (!isLoggedIn && !isLoggingIn) return '/login';
      // if (isLoggedIn && isLoggingIn) return '/';
      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        builder:
            (context, state) =>
                const Scaffold(body: Center(child: Text('Home Page'))),
      ),
      GoRoute(
        path: '/login',
        builder:
            (context, state) =>
                const Scaffold(body: Center(child: Text('Login Page'))),
      ),
    ],
  );
});
