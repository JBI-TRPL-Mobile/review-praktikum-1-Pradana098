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
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(ItemArgs.judul,
                style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: 10),
                 Text(ItemArgs.penulis,
                style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: 10),
                Text(ItemArgs.deskirpsi,
                style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),)
        ],
      ),
    );
  }
  
}