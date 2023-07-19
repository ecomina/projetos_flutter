import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class PromocaoPremioListaScreen extends StatefulWidget {
  const PromocaoPremioListaScreen({super.key});

  @override
  State<PromocaoPremioListaScreen> createState() =>
      _PromocaoPremioListaScreenState();
}

class _PromocaoPremioListaScreenState extends State<PromocaoPremioListaScreen> {
  final List<String> lista = List.generate(
    3,
    (index) => Faker().person.name(),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(child: Text((index + 1).toString())),
                title: const Text(r'20%'),
                subtitle: const Text('Desconto no produto de menor valor.'),
                trailing: const Icon(Icons.more_vert),
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(
            height: 10,
            color: Colors.transparent,
          ),
          itemCount: lista.length,
          padding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}
