import 'package:flutter/material.dart';

class GetApi extends StatelessWidget {
  const GetApi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get API'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Get API'),
          ],
        ),
      ),
    );
  }
}