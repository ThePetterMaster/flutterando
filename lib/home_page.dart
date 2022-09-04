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
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
            child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/download.jpg', fit: BoxFit.cover),
            ),
            Container(
              color: Colors.blue,
              width: 70,
              height: 70,
            ),
            Container(
              color: Colors.yellow,
              width: 50,
              height: 50,
            )
          ],
        )));
  }
}
