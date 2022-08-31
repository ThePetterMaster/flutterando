import 'package:flutter/material.dart';

// class HomeWidget extends StatelessWidget {
//   const HomeWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       body: const Center(
//         child: Text('Fluterando'),
//       ),
//       floatingActionButton:
//           // ignore: avoid_print
//           FloatingActionButton(
//               child: const Icon(Icons.add),
//               onPressed: () {
//                 print("Clicou");
//               }),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SizedBox(
        //height: double.infinity,
        //width: double.infinity,
        child: ListView(
          children: [
            for (var i = 0; i < 10; i++)
              Container(
                width: 80,
                height: 80,
                margin: const EdgeInsets.all(12),
                color: Colors.red,
              ),
          ],
        ),
      ),
      floatingActionButton:
          // ignore: avoid_print
          FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  counter++;
                });
              }),
    );
  }
}
