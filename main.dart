import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BackgroundChange(),
    );
  }
}

class BackgroundChange extends StatefulWidget {
  const BackgroundChange({super.key});

  @override
  State<BackgroundChange> createState() => _BackgroundChangeState();
}

class _BackgroundChangeState extends State<BackgroundChange> {
  Color _backgroundColor = Colors.yellow;
  bool _isYellow = true;

  void _changecolour() {
    setState(() {
      _backgroundColor = _isYellow ? Colors.blue.shade800 : Colors.yellow;
      _isYellow = !_isYellow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Center(
        child: ElevatedButton(
          onPressed: _changecolour,
          child: const Text("Arka plan rengini değiştir"),
        ),
      ),
    );
  }
}
