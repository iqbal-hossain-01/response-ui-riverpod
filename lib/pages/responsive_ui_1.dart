import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
class ResponsiveUi1 extends StatelessWidget {
  static const String routeName = 'responsive1';

  const ResponsiveUi1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'C A L C U L A T O R',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 1100) {
            return const DesktopView();
          } else if (constraints.maxWidth >= 768) {
            return const TabletView();
          } else {
            return const MobileView();
          }
        },
      ),
    );
  }
}
