import 'package:flutter/material.dart';

class PromocaoHomeScreen extends StatefulWidget {
  const PromocaoHomeScreen({super.key});

  @override
  State<PromocaoHomeScreen> createState() => _PromocaoHomeScreenState();
}

class _PromocaoHomeScreenState extends State<PromocaoHomeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.dashboard),
            label: 'Dashbord',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Pesquisa',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_applications),
            label: 'Configurar',
          ),
        ],
      ),
    ));
  }
}

// class PromocaoHomeScreen extends StatelessWidget {
//   PromocaoHomeScreen({super.key});
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
