import 'package:flutter/material.dart';

import 'package:dicee/dice.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: DicePage(),
        ),
      ),
    ),
  );
}
