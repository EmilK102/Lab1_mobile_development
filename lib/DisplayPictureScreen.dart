import 'dart:io';

import 'package:first_lab/MapScreen.dart';
import 'package:flutter/material.dart';


class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;
  final double latitude;
  final double longitude;

  const DisplayPictureScreen({super.key, required this.imagePath, required this.latitude, required this.longitude});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Просмотр Фотографии'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
      ),
      // The image is stored as a file on the device. Use the `Image.file`
      // constructor with the given path to display the image.
      body: Column(
        children: <Widget>[
          Expanded(
            child: Image.file(File(imagePath)),
          ),
          Text('Широта: $latitude', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text('Долгота: $longitude', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {
          //     Navigator.of(context).push(MaterialPageRoute(
          //       builder: (context) => MapScreen(latitude: latitude, longitude: longitude),
          //     ));
          //   },
          //   child: Text('Показать на карте'),
          // ),
          SizedBox(height: 20),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MapScreen(latitude: latitude, longitude: longitude),
          ));
        },
        child: const Icon(Icons.add_business),
      ),
    );
  }
}