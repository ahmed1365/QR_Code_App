
import 'package:flutter/material.dart';
import 'package:qr_code/screens/create.dart';
import 'package:qr_code/screens/scan.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scanner App',
      theme:
          ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: MyHomePage( title: 'Scanner App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style: TextStyle(
          fontWeight: FontWeight.bold,
        )),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => CreateScreen()));
                  print('create qr code');
                },
                child: Text('create QR Code')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => ScanScreen()));
                  print('Read qr code');
                },
                child: Text('read QR Code'))
          ],
        ),
      ),
    );
  }
}