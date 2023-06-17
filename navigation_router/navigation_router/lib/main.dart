import 'package:flutter/material.dart';


void main() {
  runApp(const MyAppBar());
}

class NavApp extends StatelessWidget {
  const NavApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: FirstScreen()),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuAppBar(),
    );
  }
}

class MenuAppBar extends StatelessWidget {
  const MenuAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Principal'),
        // shadowColor: Theme.of(context).colorScheme.shadow,
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Mostrar Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Isto é um snackbar')));
              }),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Ir para a próxima pagina',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Nextt Page'),
                  ),
                  body: const Center(
                    child: Text(
                      'Esta é a próxima página',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                );
              }));
            },
          )
        ],
      ),
      body: const Center(
        child: Text(
          'Esta é a HomePage',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return const Text('Primeira Visão');
  }
}
