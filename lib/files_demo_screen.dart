import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';

class FilesDemoScreen extends StatelessWidget {
  const FilesDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reading and Writing Files',
      home: FlutterDemo(storage: CounterStorage()),
    );
  }
}
 class CounterStorage {
   Future<String> get _localPath async {
     final directory = await getApplicationDocumentsDirectory();

     return directory.path;
   }

   Future<File> get _localFile async {
     final path = await _localPath;
     return File('$path/counter.txt');
   }

   Future<File> writeCounter(int counter) async {
     final file = await _localFile;

     // Write the file
     return file.writeAsString('$counter');
   }

   Future<int> readCounter() async {
     try {
       final file = await _localFile;

       // Read the file
       final contents = await file.readAsString();

       return int.parse(contents);
     } catch (e) {
       // If encountering an error, return 0
       return 0;
     }
   }
 }

 class FlutterDemo extends StatefulWidget {
   const FlutterDemo({Key? key, required this.storage}) : super(key: key);
   final CounterStorage storage;

   @override
   _FlutterDemoState createState() => _FlutterDemoState();
 }

 class _FlutterDemoState extends State<FlutterDemo> {
  int _counter = 0;

   @override
   void initState(){
     super.initState();
     widget.storage.readCounter().then((int value){
       setState(() {
         _counter = value;
       });
     }
     );
   }

   Future<File> _incrementCounter(){
     setState(() {
       _counter++;
     });
     return widget.storage.writeCounter(_counter);
   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: const Text ('Reading and Writing Files'),),
       body: Center(
         child: Text('Button tapped $_counter time${_counter == 1 ? '' : 's'}.'),
       ),
       floatingActionButton: FloatingActionButton(
         onPressed: _incrementCounter,
         child: const Icon (Icons.add),
         tooltip: 'Increment',
       ),
     );
   }
 }
