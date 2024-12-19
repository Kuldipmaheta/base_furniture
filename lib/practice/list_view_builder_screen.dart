import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final titles = ["List 1", "List 2", "List 3"];
  final subtitles = ["Here is list 1 subtitle", "Here is list 2 subtitle", "Here is list 3 subtitle"];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: titles.length,
            itemBuilder: (context, index) {
              return ListTile(
                subtitle: Text(subtitles[index]),
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1547721064-da6cfb341d50'),
                ),
                trailing: Icon(icons[index]),
                title: Text(
                  titles[index],
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              );
            }),
      ),
    );
  }
}
