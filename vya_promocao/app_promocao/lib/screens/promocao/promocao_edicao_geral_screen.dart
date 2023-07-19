import 'dart:math';

import 'package:app_promocao/screens/promocao/promocao_filiais_screen.dart';
import 'package:app_promocao/widgets/ecom_datepicker.dart';
import 'package:app_promocao/widgets/ecom_textfield.dart';
import 'package:flutter/material.dart';

class PromocaoEdicaoGeralScreen extends StatefulWidget {
  const PromocaoEdicaoGeralScreen({super.key});

  @override
  State<PromocaoEdicaoGeralScreen> createState() =>
      _PromocaoEdicaoGeralScreenState();
}

class _PromocaoEdicaoGeralScreenState extends State<PromocaoEdicaoGeralScreen> {
  final descricaoController = TextEditingController();
  final validadeInicialController = TextEditingController();
  final validadeFinalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: "Identidade"),
              Tab(text: "Validade"),
              Tab(text: "Filiais"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: EcomTextField(
                  controller: descricaoController,
                  hintText: 'Descrição',
                  obscureText: false),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EcomDatePicker(
                  initialDate: "01-02-2023",
                  hintText: 'Data Inicio',
                  // onChanged: (String data) {
                  //   log('x');
                  // },
                ),
                SizedBox(height: 20),
                EcomDatePicker(
                  initialDate: "01-02-2023",
                  hintText: 'Data Término',
                  // onChanged: (String data) {
                  //   log('x');
                  // },
                ),
              ],
            ),
            const Stack(
              children: [
                Text('data'),
                Center(
                  child: PromocaoFiliaisScreen(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
