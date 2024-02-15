// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:core';

class Images {
  String name;
  String subTitle;
  String imageList;
  Images({
    required this.name,
    required this.imageList,
    required this.subTitle
  });
}

List images = [
  Images(
      imageList:
          "https://media.istockphoto.com/id/1206437884/photo/fishing-lake-in-early-summer.jpg?s=612x612&w=0&k=20&c=JSZlrW6IML-FzxFayCcKdLPsMdwHY2zheKWCj-OtgqA=",
      name: 'Fishing',
      subTitle: 'fishing-lake-in-early-summer'),
  Images(
      imageList:
          "https://media.istockphoto.com/id/1198489926/photo/largemouth-bass.jpg?s=612x612&w=0&k=20&c=9XFEtj-491bqsiPjsEJJFxtQe_eNIxV_2eIL6XN4wmc=",
      name: 'Largemouth Bass',
      subTitle: 'Largemouth bass hunting'),
  Images(
      imageList:
          "https://media.istockphoto.com/id/1253824909/photo/fish-boat-vessel-fishing-in-a-rough-sea-industrial-trawler.jpg?s=612x612&w=0&k=20&c=-A3nlaal1WznqNjMpJkC_0lOci7dkY4c8IS6GvuyQhQ=",
      name: 'Boat vessel',
      subTitle: 'fish-boat-vessel-fishing-in-a-rough-sea'),
  Images(
      imageList:
          "https://media.istockphoto.com/id/1167733673/photo/female-coach-in-water-giving-group-of-children-swimming-lesson-in-indoor-pool.jpg?s=612x612&w=0&k=20&c=NC9SY321Q4PwuVNDjVI7Z_2sO46hxfXXCQBXxWkgEow=",
      name: 'Swimming Pool',
      subTitle: 'Female coach with Children swimming'),
  Images(
      imageList:
          "https://media.istockphoto.com/id/1278976828/photo/team-of-young-football-players-stacking-hands-before-match.jpg?s=612x612&w=0&k=20&c=l-ZqPpFkynjAvp0Q7EQu2cqzYqPlsSY3idfa21kGwGg=",
      name: 'Football players',
      subTitle: 'team-of-young-football-players'),
];
