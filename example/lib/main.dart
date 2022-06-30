import 'package:bouncing_button/bouncing_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final double _scaleFactor = 1.0;

  _onPressed() {
    debugPrint("pressed!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BouncingButton(
              scaleFactor: _scaleFactor,
              onPressed: () => _onPressed(),
              child: Container(
                height: 45,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white,
                ),
                child: const Center(
                  child: Text(
                    'Click Me!',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            BouncingButton(
              scaleFactor: _scaleFactor,
              onPressed: () {
                _onPressed();
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Icon(Icons.favorite),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
