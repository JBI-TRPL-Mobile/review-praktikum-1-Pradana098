import 'package:flutter/material.dart';
import 'package:template_project/pages/detail_buku.dart';
import 'package:template_project/pages/halaman_home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'halaman',
      theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,

    
    ),
    initialRoute: '/',
    routes: {
      '/':(context)=> HalamanHome(),
      '/item': (context)=> DetailBuku(),
    },
    );
  }
}
