import 'dart:convert';
import 'package:iphotos/models/place.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  @action
  Future<List<Place>> getPlaces() async {
    var response = await http.get('https://iphotos.herokuapp.com/api/places');
    String data = response.body;
    List dataList = json.decode(data);
    List<Place> places = dataList.map((e) => Place.fromJson(e)).toList();
    print(places);
    return places;
  }
}
