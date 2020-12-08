class Place {
  final int id;
  final String name;
  final String city;
  final String url;

  Place({this.id, this.name, this.city, this.url});

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json['id'],
      name: json['name'],
      city: json['city'],
      url: json['photo_url'],
    );
  }
}
