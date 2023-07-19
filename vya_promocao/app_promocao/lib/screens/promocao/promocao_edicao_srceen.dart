import 'package:app_promocao/screens/promocao/promocao_edicao_geral_screen.dart';
import 'package:app_promocao/screens/promocao/promocao_premio_lista_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PromocaoEdicaoScreen extends StatefulWidget {
  const PromocaoEdicaoScreen({super.key});

  @override
  State<PromocaoEdicaoScreen> createState() => _PromocaoEdicaoScreenState();
}

class _PromocaoEdicaoScreenState extends State<PromocaoEdicaoScreen> {
  int currentPageIndex = 0;

  static const List<Widget> listWidget = <Widget>[
    PromocaoEdicaoGeralScreen(),
    PromocaoPremioListaScreen(),
    Center(child: Text('Chave de ativação'))
  ];

  void onItemTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Promoção'),
          backgroundColor: Colors.black,
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
        ),
        body: SafeArea(
          child: Scaffold(
            body: listWidget.elementAt(currentPageIndex),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.black,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.description_outlined),
                  label: 'Geral',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard_outlined),
                  label: 'Premios',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.info_outline),
                  label: 'Resumo',
                ),
              ],
              currentIndex: currentPageIndex,
              onTap: onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}
