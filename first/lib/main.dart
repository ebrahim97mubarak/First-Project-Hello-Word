import 'package:flutter/material.dart';

void main() {
  runApp(
    const HelloWorld(),
  );
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(
            child: Text(
              "المشروع الأول",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 30,
              ),
            ),
          ),
        ),
        body: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustumContainer(
                text: 'مرحباً',
                width: 200,
              ),
              CustumContainer(
                text: 'أهلاً',
                width: 100,
              ),
              CustumContainer(
                text: 'حياكم',
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustumContainer extends StatelessWidget {
  const CustumContainer({
    super.key,
    required this.width,
    required this.text,
  });
  final double width;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: width,
      color: const Color.fromARGB(255, 244, 222, 29),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontStyle: FontStyle.italic,
            fontFamily: 'Algerian',
          ),
        ),
      ),
    );
  }
}
