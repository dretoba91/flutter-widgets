// ignore_for_file: public_member_api_docs, sort_constructors_first
class Items {
  final String header;
  final String body;
  bool isExpanded;
  Items({
    required this.header,
    required this.body,
    this.isExpanded = false,
  });
}

const String about = "About player number";
final List<Items> items = [
  Items(header: 'Expanded Panel 0', body: about),
  Items(header: 'Expanded Panel 1', body: about),
  Items(header: 'Expanded Panel 2', body: about),
  Items(header: 'Expanded Panel 3', body: about),
  Items(header: 'Expanded Panel 4', body: about),
  Items(header: 'Expanded Panel 5', body: about),
  Items(header: 'Expanded Panel 6', body: about),
  Items(header: 'Expanded Panel 7', body: about),
  Items(header: 'Expanded Panel 8', body: about),
  Items(header: 'Expanded Panel 9', body: about),
  Items(header: 'Expanded Panel 10', body: about),
  Items(header: 'Expanded Panel 11', body: about),
  Items(header: 'Expanded Panel 12', body: about),
  Items(header: 'Expanded Panel 13', body: about),
  Items(header: 'Expanded Panel 14', body: about),
  Items(header: 'Expanded Panel 15', body: about),
  Items(header: 'Expanded Panel 16', body: about),
  Items(header: 'Expanded Panel 17', body: about),
  Items(header: 'Expanded Panel 18', body: about),
  Items(header: 'Expanded Panel 19', body: about),
  Items(header: 'Expanded Panel 20', body: about),
];
