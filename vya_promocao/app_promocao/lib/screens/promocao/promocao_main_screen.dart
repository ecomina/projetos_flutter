import 'package:app_promocao/screens/promocao/promocao_configuracao_screen.dart';
import 'package:app_promocao/screens/promocao/promocao_home_screen.dart';
import 'package:app_promocao/screens/promocao/promocao_lista_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PromocaoMainScreen extends StatefulWidget {
  const PromocaoMainScreen({super.key});

  @override
  State<PromocaoMainScreen> createState() => _PromocaoMainScreenState();
}

class _PromocaoMainScreenState extends State<PromocaoMainScreen> {
  int currentPageIndex = 0;

  static const List<Widget> listWidget = <Widget>[
    PromocaoHomeScreen(),
    PromocaoListaScreen(),
    PromocaoConfiguracaoScreen()
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
        onPressed: () {
          GoRouter.of(context).go('/promocaoEdicao');
        },
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text('Promoções'),
        ),
        backgroundColor: const Color.fromARGB(255, 92, 91, 91),
      ),
      body: Center(
        child: listWidget.elementAt(currentPageIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pesquisa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_applications),
            label: 'Configurar',
          ),
        ],
        currentIndex: currentPageIndex,
        backgroundColor: const Color.fromARGB(255, 92, 91, 91),
        onTap: onItemTapped,
      ),
    ));
  }
}

// class PromocaoMainScreen extends StatelessWidget {
//   PromocaoMainScreen({super.key});
//   int currentPageIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       bottomNavigationBar: NavigationBar(
//         onDestinationSelected: (int index) {},
//         selectedIndex: currentPageIndex,
//         destinations: const <Widget>[
//           NavigationDestination(
//             icon: Icon(Icons.explore),
//             label: 'Explore',
//           )
//         ],
//       ),
//     ));
//   }
// }
