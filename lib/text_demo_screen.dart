import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextDemoScreen extends StatelessWidget {
  const TextDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                width: 200.0,
                height: 200.0,
                margin: const EdgeInsets.only(top: 60.0),
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    border: Border.all(color: Colors.deepPurple, width: 3)),
                alignment: Alignment.center,
                child: const Text(
                  'Просто длинный длинный длинный текст',
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: 200.0,
                height: 200.0,
                margin: const EdgeInsets.only(top: 60.0),
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    border: Border.all(color: Colors.deepPurple, width: 3)),
                alignment: Alignment.center,
                child: const Text.rich(
                  TextSpan(text: 'Фрагмент',
                      style: TextStyle(color: Colors.white),
                  children: <TextSpan> [
                      TextSpan(text: ' стилизованного', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: '  текста', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18.0)),
                  ]
                ),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
