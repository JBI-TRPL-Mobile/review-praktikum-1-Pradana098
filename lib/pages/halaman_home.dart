import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:template_project/items/item.dart';

class HalamanHome extends StatelessWidget {
  final List<Item> items = [
    Item(
      judul: 'Jurnal Terror Libur Sekolah',
      deskirpsi:
          'Teruntuk saudara-saudaraku di Jurnal Risa; Saat ini akhirnya datang, kesempatan untuk menceritakan kisah kita bersama.',
      penulis: 'Risa Saraswati',
      gambar: 'assets/item/buku1.png',
    ),
    Item(
        judul: 'Jurnal Ph.D. mama',
        penulis: 'Kanti pertiwi dkk',
        deskirpsi:
            'This book presents the struggles and joys of Indonesian women as they work towards achieving their aim: a Ph.D. The stories are often heart-wrenching, but in the end the struggle is worthwhile. –Lyn Parker, Professor of Asian Studies,',
        gambar: 'assets/item/buku2.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar buku'),
      ),
      body: Column(
        children: [
          Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.all(8),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ItemCard(item: items[index]);
                  }))
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({Key? Key, required this.item}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 8,
        ),
        Text('judul : ${item.judul}'),
        SizedBox(
          height: 10,
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Text('Detail')),
      ]),
    );
  }
}
