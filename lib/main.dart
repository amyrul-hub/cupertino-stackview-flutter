// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                print ("Assalamualaikum Dunia");
                setState(() {
                  isVisible = true;
                });
      
      
               },
              child: const Text("Tekan Sini", style: TextStyle(color: Colors.white, fontSize: 25),),
              ),
              const SizedBox(height: 30,),
              Visibility(
                visible: isVisible,
                child: const Text("Amirul Fitri", style: TextStyle(color: Colors.white, fontSize:30),))

          ],
        ),
      ),
    );
  }
}
