import 'package:flutter/material.dart';

class PromocaoFiliaisScreen extends StatefulWidget {
  const PromocaoFiliaisScreen({super.key});

  @override
  State<PromocaoFiliaisScreen> createState() => _PromocaoFiliaisScreenState();
}

class _PromocaoFiliaisScreenState extends State<PromocaoFiliaisScreen> {
  final List<String> filiais = <String>['A', 'B', 'C'];

  List<bool> itemChecked = List.generate(3, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemCount: filiais.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blueGrey,
            padding: const EdgeInsets.all(8),
            child: ListTile(
              leading: Checkbox(
                value: itemChecked[index],
                onChanged: (bool? value) {
                  setState(
                    () {
                      itemChecked[index] = value!;
                    },
                  );
                },
                checkColor: Colors.black,
                activeColor: const Color.fromARGB(255, 244, 231, 54),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Filial ${filiais[index]}'.toUpperCase(),
                  ),
                  const Text(
                    'Localização',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, index) => const Divider(
          color: Colors.transparent,
        ),
      ),
    );
  }
}
