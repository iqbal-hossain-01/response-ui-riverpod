import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_design_riverpod_state/pages/pages.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
  final _router = GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: HomePage.routeName,
        path: '/',
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            name: ExpansionWidgetsPage.routeName,
            path: 'expansion',
            builder: (context, state) => const ExpansionWidgetsPage(),
          ),
          GoRoute(
            name: ResponsiveUi1.routeName,
            path: 'responsive1',
            builder: (context, state) => const ResponsiveUi1(),
          ),
          GoRoute(
            name: ResponsiveUi2.routeName,
            path: 'responsive2',
            builder: (context, state) => const ResponsiveUi2(),
          ),
        ]
      ),
    ]
  );
}


