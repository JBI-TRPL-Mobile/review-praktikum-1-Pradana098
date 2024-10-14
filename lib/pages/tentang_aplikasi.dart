import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TentangAplikasi extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.blue,
      child: Text(
        'Dibuat Oleh : Dimas Januar Pradana',
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}