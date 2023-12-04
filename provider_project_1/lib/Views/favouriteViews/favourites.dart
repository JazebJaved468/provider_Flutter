import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project_1/Providers/favouriteProvider.dart';
import 'package:provider_project_1/Views/favouriteViews/showFavourites.dart';
import 'package:provider_project_1/Views/home.dart';

class MyFavourites extends StatelessWidget {
  const MyFavourites({super.key});

  @override
  Widget build(BuildContext context) {
    final favouriteProvider =
        Provider.of<FavouriteProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 500,
              child: Consumer<FavouriteProvider>(
                builder: (context, favouriteProviderModel, child) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: favouriteProviderModel.items.length,
                    itemBuilder: (context, index) {
                      String item = favouriteProviderModel.items[index];
                      return ListTile(
                        title: Text(item),
                        trailing: IconButton(
                          icon: Icon(
                              favouriteProviderModel.isAlreadyFavourite(index)
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined),
                          onPressed: () {
                            favouriteProviderModel.isAlreadyFavourite(index)
                                ? favouriteProvider.removeFavourite(index)
                                : favouriteProvider.addFavourite(index);
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            ),

            // spacing
            const SizedBox(
              height: 70,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ShowFavourites()),
                );
              },
              child: const Text("Show Favourites"),
            ),
          ],
        ),
      ),
    );
  }
}
