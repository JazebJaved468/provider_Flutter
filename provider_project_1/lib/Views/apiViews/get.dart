import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project_1/Providers/apiProvider.dart';

class GetApi extends StatelessWidget {
  const GetApi({super.key});

  @override
  Widget build(BuildContext context) {
    final apiProvider = Provider.of<APIProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Get'),
      ),
      body: FutureBuilder(
        future: apiProvider.getPosts(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: Text("Loading"),
            );
          } else {
            return ListView.builder(
              itemCount: apiProvider.postList.length,
              itemBuilder: (context, index) {
                return Text("${apiProvider.postList[index].title}");
              },
            );
          }
        },
      ),
    );
  }
}

// FutureBuilder(
//           future: postList,
//           builder: (context, snapshot) {
//             if (!snapshot.hasData) {
//               return Text("Loading");
//             } else {
//               return ListView.builder(
//                 itemCount: apiProvider.postList.length,
//                 itemBuilder: (context, index) {
//                   return Text("${apiProvider.postList[index].title}");
//                 },
//               );
//             }
//           },
//         ),