import 'package:flutter/material.dart';
import 'package:zoop_ui/src/components/ZoopButton.dart';
import 'package:zoop_ui/src/model/ZoopColor.dart';

void main() {
  runApp(const MyApp());
}

class MyAppState extends State<MyApp> {

  final _color = ZoopColor(
    textColor: const Color.fromARGB(255, 255, 255, 255), 
    buttonColor: const Color.fromARGB(255, 245, 129, 66), 
    displayColor:const  Color.fromARGB(255, 27, 27, 27), 
  );

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.orange
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Zoop App bar'),
        ),
        body: Center(
          child: ZoopButton(
            title: 'Habilitar', 
            onClick: () => {
              print('OnClick button')
            },
          ),
        ) 
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  
  const MyApp({Key? key}) : super(key: key);

  @override
   MyAppState createState() {
    return MyAppState();
  }
}
