import 'package:flutter/material.dart';
import 'datas.dart';

class DataCard extends StatelessWidget {

  final Datas data;
  final Function() delete;
  DataCard({required this.data, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              data.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              data.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('Delete quote'),
            ),
          ],
        ),
      ),
    );
  }
}