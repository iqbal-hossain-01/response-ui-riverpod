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
      'title': 'Section 3',
      'subtitle': 'Details about Section 3',
      'content': 'This is the content of Section 3.'
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
      /*
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ExpansionTile(

                title: Text(item['title']),
                subtitle: Text(item['subtitle']),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(item['content']),
                  ),
                ],
              ),
            ),
          );
        },
      ),

       */
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (panelIndex, expanded) {
            setState(() {
              //_data[panelIndex].isExpanded = expanded;
              _data[panelIndex].isExpanded = !_data[panelIndex].isExpanded;
            });
          },
          children: _data.map<ExpansionPanel>((Item item) {
            return ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: Text(item.headerValue),
                );
              },
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(item.expandedValue),
              ),
              isExpanded: item.isExpanded,
            );
          }).toList(),
        ),
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
