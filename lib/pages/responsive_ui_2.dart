import 'package:flutter/material.dart';
import 'package:ui_design_riverpod_state/utils/constants.dart';

class ResponsiveUi2 extends StatelessWidget {
  static const String routeName = 'responsive2';
  const ResponsiveUi2({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive App"),
      ),
      endDrawer: const MyEndDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Top Banner
            Container(
              height: screenHeight * 0.25, // Screen height এর ২৫%
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "Welcome to My App",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Responsive Grid
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  // ছোট স্ক্রিনে এক কলাম, বড় স্ক্রিনে দুই কলাম
                  int crossAxisCount = constraints.maxWidth > 600 ? 2 : 1;

                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 3 / 2, // প্রতিটি আইটেমের অনুপাত
                    ),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Item ${index + 1}",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),

            // Bottom Button
            const SizedBox(height: 16),
            SizedBox(
              height: 50, // নির্দিষ্ট উচ্চতা
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Get Started",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
