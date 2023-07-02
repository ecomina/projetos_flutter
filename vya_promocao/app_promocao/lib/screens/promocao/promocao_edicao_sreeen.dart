import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PromocaoEdicaoScreen extends StatefulWidget {
  const PromocaoEdicaoScreen({super.key});

  @override
  State<PromocaoEdicaoScreen> createState() => _PromocaoEdicaoScreenState();
}

class _PromocaoEdicaoScreenState extends State<PromocaoEdicaoScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Promoção'),
            backgroundColor: Colors.amber[700],
            scrolledUnderElevation: 5,
            shadowColor: Theme.of(context).colorScheme.shadow,
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  GoRouter.of(context).go('/main');
                },
                icon: const Icon(Icons.close),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.check),
              )
            ],
            bottom: const TabBar(
              tabs: [
                Tab(text: "Identificação"),
                Tab(text: "Validação"),
                Tab(text: "Status"),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              Center(
                child: Text("It's cloudy here"),
              ),
              Center(
                child: Text("It's rainy here"),
              ),
              Center(
                child: Text("It's sunny here"),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.description),
                label: 'Geral',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: 'Premios',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Produtos',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
