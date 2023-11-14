import 'package:flutter/material.dart';

void main () {
runApp(
   MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Flutter Demo',
     theme: ThemeData(
         useMaterial3: true,
         colorSchemeSeed: Colors.amber
     ),
     home: const HomePage(),
  )
);
}

class HomePage extends StatelessWidget {
const HomePage({super.key});
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Hey There!'),
   ),
   body: Container(),
   );
 }
}