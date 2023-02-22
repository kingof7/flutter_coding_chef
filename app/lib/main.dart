import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// State가 변하는 조건 2가지
// Child 위젯의 생성자를 통해서 데이터가 전달 될 때
// Internal state가 바뀔 때
// 2강 - 1분37초, 6분 47초
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('You have pushed the button this many times:'),
              Text(
                '$counter',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            counter++;
            print("$counter");
          },
        ),
      ),
    );
  }
}
