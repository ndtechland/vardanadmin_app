import 'package:flutter/material.dart';

class InfiniteListPage extends StatelessWidget {
  final ScrollController controller;
  final Color color;

  const InfiniteListPage({Key? key, required this.controller, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: ListView.builder(
        controller: controller,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index', style: TextStyle(color: Colors.white)),
          );
        },
      ),
    );
  }
}
