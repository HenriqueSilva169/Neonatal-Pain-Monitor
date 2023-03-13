import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(
            title: Text(
              'Neonatal Pain Monitor',
              style: Theme.of(context) //
                  .primaryTextTheme
                  .titleLarge,
            ),
          ),
          Center(
            child: Card(
                child: SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    child: const Text('Hello world'))),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.teal, useMaterial3: true),
      title: 'Neonatal Pain Monitor',
      home: const SafeArea(
        child: MyScaffold(),
      ),
    ),
  );
}
