import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project_1/Providers/favouriteProvider.dart';

class ShowFavourites extends StatelessWidget {
  const ShowFavourites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Items'),
      ),
      body: Consumer<FavouriteProvider>(
        builder: (context, favouriteProvider, child) => ListView.builder(
          shrinkWrap: true,
          itemCount: favouriteProvider.favourites.length,
          itemBuilder: (context, index) {
            int itemIndex = favouriteProvider.favourites[index];
            return ListTile(
              title: Text("${favouriteProvider.items[itemIndex]}"),
              trailing: IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  favouriteProvider.removeFavourite(itemIndex);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
