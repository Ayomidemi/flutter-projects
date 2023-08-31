import 'package:flutter/material.dart';
import 'datas.dart';
import 'data_card.dart';

void main() {
  runApp(MaterialApp(
    home: DataList(),
  ));
}

class DataList extends StatefulWidget {
  const DataList({super.key});

  @override
  State<DataList> createState() => _DataListState();
}

class _DataListState extends State<DataList> {

  List<Datas> datas =[
    Datas(author: 'Allen Poe', text: 'Be yourself, life is too short.'),
    Datas(author: 'Gerald Goodwill', text: 'Good genius girl.'),
    Datas(author: 'Locksmith Clay', text: 'The truth is hard.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: datas.map((data) => DataCard(
            data: data,
          delete: () {
              setState(() {
                datas.remove(data);
              });
          }
        )).toList(),
      ),
    );
  }
}





