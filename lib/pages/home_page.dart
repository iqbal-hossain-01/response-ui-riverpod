import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_design_riverpod_state/pages/pages.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'home';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Design & Riverpod'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        children: [
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Expansion Widgets',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.goNamed(ExpansionWidgetsPage.routeName);
                  },
                  child: const Text(
                    'Go Expansion Page',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Responsive UI-1',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.goNamed(ResponsiveUi1.routeName);
                  },
                  child: const Text(
                    'Go UI-1 Page',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Responsive UI-2',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.goNamed(ResponsiveUi2.routeName);
                  },
                  child: const Text(
                    'Go UI-2 Page',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Expansion Widgets',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.goNamed(ExpansionWidgetsPage.routeName);
                  },
                  child: const Text(
                    'Go Expansion Page',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Expansion Widgets',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.goNamed(ExpansionWidgetsPage.routeName);
                  },
                  child: const Text(
                    'Go Expansion Page',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Expansion Widgets',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.goNamed(ExpansionWidgetsPage.routeName);
                  },
                  child: const Text(
                    'Go Expansion Page',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Expansion Widgets',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.goNamed(ExpansionWidgetsPage.routeName);
                  },
                  child: const Text(
                    'Go Expansion Page',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Expansion Widgets',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.goNamed(ExpansionWidgetsPage.routeName);
                  },
                  child: const Text(
                    'Go Expansion Page',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Expansion Widgets',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.goNamed(ExpansionWidgetsPage.routeName);
                  },
                  child: const Text(
                    'Go Expansion Page',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
