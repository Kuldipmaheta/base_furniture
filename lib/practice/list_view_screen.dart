import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}
class _ListViewScreenState extends State<ListViewScreen> {
  var arrNames = [
    'karan',
    'kamal',
    'ayush',
    'ram',
    'samir',
    'aryan',
    'ayush',
    'ram',
    'samir',
    'aryan'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListTile'),centerTitle: true,),
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
          itemCount: arrNames.length,
          itemBuilder: (context, index) {
          return ListTile(
            leading: Text('${index + 1}'),
            title: Text(arrNames[index]),
            subtitle: Text('data'),
            trailing: Icon(Icons.add),

          );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          ),
    );
  }
}
