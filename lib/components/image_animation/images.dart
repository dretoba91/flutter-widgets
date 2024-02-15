// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:core';

class Images {
  String name;
  String imageList;
  Images({
    required this.name,
    required this.imageList,
  });
}

List images = [
  Images(
      imageList:
          "https://unsplash.com/photos/a-brown-bird-sitting-on-a-branch-in-front-of-a-green-background-r5KrvcZfTQ0",
      name: 'Bird'),
  Images(
      imageList:
          "https://unsplash.com/photos/a-snow-covered-hill-with-a-house-on-top-of-it-bzLrtVZxkUE",
      name: 'Iced'),
  Images(
      imageList:
          "https://unsplash.com/photos/green-palm-tree-under-blue-sky-during-daytime-Cbg3aUtNaiM",
      name: 'Palm Tree'),
  Images(
      imageList:
          "https://unsplash.com/photos/person-standing-near-waterfall-YVBXuL6Al2w",
      name: 'Water Fall'),
  Images(
      imageList:
          "https://unsplash.com/photos/a-group-of-penguins-swimming-in-the-ocean-9QmbsTDAI4g",
      name: 'Penguins'),
];
