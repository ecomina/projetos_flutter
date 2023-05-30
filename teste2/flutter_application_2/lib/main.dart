import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       title: 'Meu App',
//       home: SafeArea(
//         child: MeuScaffold(),
//       ),
//     ),
//   );
// }

void main() {
  runApp(const MeuScaffold());
}

class MinhaAppBar extends StatelessWidget {
  const MinhaAppBar({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.0,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(color: Colors.blue[800]),
        child: Row(children: [
          const IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Navegação Menu',
              onPressed: null),
          Expanded(
            child: title,
          ),
          const IconButton(
              icon: Icon(Icons.search), tooltip: 'Search', onPressed: null)
        ]));
  }
}

class MeuScaffold extends StatelessWidget {
  const MeuScaffold({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MinhaAppBar(
              title: Text('Exemplo titulo 2',
                  style: Theme.of(context).primaryTextTheme.titleLarge)),
          const Expanded(
            child: Center(
              child: Text('Olá mundo!'),
            ),
          ),
        ],
      ),
    );
  }
}
