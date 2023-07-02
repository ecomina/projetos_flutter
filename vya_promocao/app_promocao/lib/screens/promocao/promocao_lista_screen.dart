import 'package:flutter/material.dart';

class PromocaoListaScreen extends StatefulWidget {
  const PromocaoListaScreen({super.key});

  @override
  State<PromocaoListaScreen> createState() => _PromocaoListaScreenState();
}

class _PromocaoListaScreenState extends State<PromocaoListaScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Promoção Lista'),
    );
    //   return SafeArea(
    //     child: Scaffold(
    //       appBar: AppBar(
    //         bottom: const TabBar(
    //           tabs: <Widget>[
    //             Tab(text: 'Ativos'),
    //             Tab(text: 'Inativos'),
    //             Tab(text: 'Todos'),
    //           ],
    //         ),
    //       ),
    //       body: const TabBarView(
    //         children: <Widget>[
    //           Center(
    //             child: Text("It's cloudy here"),
    //           ),
    //           Center(
    //             child: Text("It's rainy here"),
    //           ),
    //           Center(
    //             child: Text("It's sunny here"),
    //           ),
    //         ],
    //       ),
    //     ),
    //   );
  }
}
