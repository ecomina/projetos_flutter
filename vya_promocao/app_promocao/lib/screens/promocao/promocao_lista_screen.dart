import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class PromocaoListaScreen extends StatefulWidget {
  const PromocaoListaScreen({super.key});

  @override
  State<PromocaoListaScreen> createState() => _PromocaoListaScreenState();
}

class _PromocaoListaScreenState extends State<PromocaoListaScreen> {
  final List<String> randomNames = List.generate(
    15,
    (index) => Faker().person.name(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemCount: randomNames.length,
        addAutomaticKeepAlives: true,
        itemBuilder: (context, index) {
          final item = randomNames[index];
          return Dismissible(
            key: Key(item),
            onDismissed: (direction) => {
              setState(
                () {
                  if (direction == DismissDirection.startToEnd) {
                    randomNames.removeAt(index);
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const AlertDialog(
                            title: Text('Removido'),
                          );
                        });
                  } else if (direction == DismissDirection.endToStart) {
                    randomNames.removeAt(index);
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const AlertDialog(
                          title: Text('Removido 2'),
                        );
                      },
                    );
                  }
                },
              )
            },
            direction: DismissDirection.horizontal,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 16.0),
            ),
            secondaryBackground: Container(
              color: Colors.green,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 16.0),
            ),
            child: Container(
              height: 100,
              color: Colors.blueGrey,
              child: const Center(
                child: Column(
                  children: [
                    Center(child: Text('Teste x')),
                    Icon(Icons.replay_circle_filled),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(
          height: 5,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }
}
