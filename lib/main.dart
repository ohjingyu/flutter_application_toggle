import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var isVisible = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    if (isVisible == false) {
                      isVisible = true;
                    } else {
                      isVisible = false;
                    }
                  });
                },
                child: Text(
                  '토글',
                ),
                color: Colors.cyanAccent,
                textColor: Colors.black,
              ),
              Visibility(
                visible: isVisible,
                child: Container(
                  color: Colors.brown,
                  width: double.infinity,
                  height: 100,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
