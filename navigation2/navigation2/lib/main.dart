import 'package:flutter/material.dart';
import 'package:navigation2/home.dart';

void main() {
  runApp(const NavigationBarApp());
}

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EcomNavigationBar(),
    );
  }
}

class EcomNavigationBar extends StatefulWidget {
  const EcomNavigationBar({super.key});

  @override
  State<EcomNavigationBar> createState() => _EcomNavigationBar();
}

class _EcomNavigationBar extends State<EcomNavigationBar> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBehavior,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.commute),
            label: 'Commute',
          ),
          NavigationDestination(
              selectedIcon: Icon(Icons.bookmark),
              icon: Icon(Icons.bookmark_border),
              label: 'Saved'),
        ],
      ),
      body: <Widget>[
        Container(
            color: Colors.amber[100],
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Label behavior: ${labelBehavior.name}'),
                const SizedBox(height: 10),
                OverflowBar(
                  spacing: 10.0,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          labelBehavior =
                              NavigationDestinationLabelBehavior.alwaysShow;
                        });
                      },
                      child: const Text('alwayShow'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          labelBehavior = NavigationDestinationLabelBehavior
                              .onlyShowSelected;
                        });
                      },
                      child: const Text('onlyShowSelected'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          labelBehavior =
                              NavigationDestinationLabelBehavior.alwaysHide;
                        });
                      },
                      child: const Text('alwaysHide'),
                    ),
                  ],
                )
              ],
            )),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        const Home()
      ][currentPageIndex],
    );
  }
}
