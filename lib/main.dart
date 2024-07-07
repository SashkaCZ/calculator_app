import 'package:flutter/material.dart';
import 'buttons.dart';
import 'package:math_expressions/math_expressions.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
  }

  class _HomePageState extends State<HomePage> {
    var userInput = '';
    var answer = '';
    final List<String> buttons = [
      '1','2','3','4','5','6','7','8','9','0',
      '+','-','*','/','%','C','DEL','+/-','.',
    ];
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
            appBar:  AppBar(
              title:  Text('Calculator'),
            ),
            backgroundColor: Colors.white54,
            body: Column(
              children: <Widget>[
                 Expanded(
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.centerRight,
                      child: Text(
                        userInput,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      alignment: Alignment.centerRight,
                      child: Text(
                        answer,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
            ),
          ),
            ],
          ),
        );
      }
    
  }

  

