import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'All about Dekom',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double iconSize = MediaQuery.of(context).size.height * .2;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.engineering,
                  size: iconSize,
                  color: Colors.blueGrey[900],
                ),
                Icon(
                  Icons.construction,
                  size: iconSize,
                  color: Colors.blueGrey[900],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Under development",
              style: Theme.of(context).textTheme.headline2?.copyWith(
                color: Colors.blueGrey[900],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: Colors.blueGrey.withOpacity(.5),
        ),
        child: Text(
          "This web created using Flutter",
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
            color: Colors.blueGrey[700],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
