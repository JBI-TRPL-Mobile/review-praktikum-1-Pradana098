import 'package:flutter/material.dart';
import 'package:template_project/items/item.dart';

class DetailBuku extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final ItemArgs = ModalRoute.of(context)! .settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(ItemArgs.judul),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            ItemArgs.gambar,
            height: 150,
            width: 100,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
  
}