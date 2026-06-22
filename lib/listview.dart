import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView.builder"),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const Icon(Icons.list),
            title: Text("List item $index"),
            trailing: const Icon(Icons.arrow_forward),
          );
        },
      ),
    );
  }
}
