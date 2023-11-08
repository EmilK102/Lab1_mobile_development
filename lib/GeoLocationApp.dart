import 'package:flutter/material.dart';

class GeoLocationApp extends StatefulWidget {
  const GeoLocationApp({super.key});

  @override
  State<GeoLocationApp> createState() => _GeoLocationAppState();
}

class _GeoLocationAppState extends State<GeoLocationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Получить Местоположение"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(child: Column(
      )),
    );
  }
}
