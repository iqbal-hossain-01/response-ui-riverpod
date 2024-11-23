import 'package:flutter/material.dart';

class ExpansionWidgetsPage extends StatefulWidget {
  static const String routeName = 'expansion';
  const ExpansionWidgetsPage({super.key});

  @override
  State<ExpansionWidgetsPage> createState() => _ExpansionWidgetsPageState();
}

class _ExpansionWidgetsPageState extends State<ExpansionWidgetsPage> {
  final List<Map<String, dynamic>> items = [
    {
      'title': 'Section 1',
      'subtitle': 'Details about Section 1',
      'content': 'This is the content of Section 1.'
    },
    {
      'title': 'Section 2',
      'subtitle': 'Details about Section 2',
      'content': 'This is the content of Section 2.'
    },
    {
      'title': 'Section 2',
      'subtitle': 'Details about Section 2',
      'content': 'This is the content of Section 2.'
    },
  ];

  final List<Item> _data = List.generate(
    3,
        (index) => Item(
          headerValue: 'Panel $index',
          expandedValue: 'This is the details of Panel $index',
        ),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Widgets'),
      ),
    );
  }
}

class Item {
  String headerValue;
  String expandedValue;
  bool isExpanded;

  Item({
    required this.headerValue,
    required this.expandedValue,
    this.isExpanded = false,
  });

}
