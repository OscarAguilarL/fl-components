// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'MetalGear',
    'Super Smash',
    'Final Fantasy',
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView tipo 2'),
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.indigo,
          ),
          onTap: () {
            final game = options[i];
            print(game);
          },
        ),
        separatorBuilder: (__, ___) => const Divider(),
        itemCount: options.length,
      ),
    );
  }
}
