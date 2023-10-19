import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int one = 1;
  int two = 2;
  int three = 3;
  int four = 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           backgroundColor: Color.fromARGB(255, 163, 120, 218),
          title: const Center(child: Text('Counters')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Card(
                    semanticContainer: true,
                    child: Column(
                      children: [
                        Text(
                          '$one',
                          style: const TextStyle(fontSize: 150),
                        ),
                        FloatingActionButton.extended(
                          backgroundColor: Color.fromARGB(255, 163, 120, 218),
                          onPressed: () {
                            setState(() => one+=1);
                          },
                          label: const Text('Aumentar'),
                        ),
                        const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 15))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Card(
                    semanticContainer: true,
                    child: Column(
                      children: [
                        Text(
                          '$two',
                          style: const TextStyle(fontSize: 150),
                        ),
                        FloatingActionButton.extended(
                          backgroundColor: Color.fromARGB(255, 163, 120, 218),
                          onPressed: () {
                            setState(() => two+=2);
                          },
                          label: const Text('Aumentar'),
                        ),
                        const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 15))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Card(
                    semanticContainer: true,
                    child: Column(
                      children: [
                        Text(
                          '$three',
                          style: const TextStyle(fontSize: 150),
                        ),
                        FloatingActionButton.extended(
                          backgroundColor: Color.fromARGB(255, 163, 120, 218),
                          onPressed: () {
                            setState(() => three+=3);
                          },
                          label: const Text('Aumentar'),
                        ),
                        const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 15))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Card(
                    semanticContainer: true,
                    child: Column(
                      children: [
                        Text(
                          '$four',
                          style: const TextStyle(fontSize: 150),
                        ),
                        FloatingActionButton.extended(
                          backgroundColor: Color.fromARGB(255, 163, 120, 218),
                          onPressed: () {
                            setState(() => four+=5);
                          },
                          label: const Text('Aumentar'),
                        ),
                        const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 15))
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          FloatingActionButton.extended(
           backgroundColor: Color.fromARGB(255, 163, 120, 218),
            onPressed: () {
              setState(() => {
                    one = 1,
                    two = 2,
                    three = 3,
                    four = 5,
                  });
            },
            label: const Text('Reset'),
          ),
        ]),
      ),
    );
  }
}