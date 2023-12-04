import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FavouriteProvider extends ChangeNotifier {
  List favourites = []; //index of items is stored in this list

  List items = [
    "Apple",
    "Banana",
    "Orange",
    "Mango",
    "Pineapple",
    "Grapes",
    "Watermelon",
    "Strawberry",
    "Cherry",
    "Papaya",
    "Guava",
    "Kiwi",
    "Pomegranate",
    "Lemon",
    "Peach",
    "Apricot",
    "Avocado",
    "Cantaloupe",
    "Fig",
    "Honeydew",
    "Lime",
    "Lychee",
    "Nectarine",
    "Plum",
  ];

  void addFavourite(int itemIndex) {
    favourites.add(itemIndex);
    notifyListeners();
  }

  void removeFavourite(int itemIndex) {
    favourites.remove(itemIndex);
    notifyListeners();
  }

  bool isAlreadyFavourite(int index) {
    if (favourites.contains(index)) {
      return true;
    } else {
      return false;
    }
  }
}
