

import 'dart:convert';

import 'package:plants_repository/plants_repository.dart';
import 'package:flutter/services.dart';

class PlantRepository {
  Future<List<Plant>> getInitialPlants()  async {
    List<Plant> plants = [];
    
    final jsonMap = await loadJsonData();
    //final jsonResult = jsonDecode(data);
    // Iterable l = json.decode(response.body);
    // List<Post> posts = List<Post>.from(l.map((model)=> Post.fromJson(model)));
    for (var plant in jsonMap) {
      plants.add(plant);
    }
    return plants;
  }
  
  Future<List<Plant>> loadJsonData() async {
    // Load the JSON string from the assets
    String data = await rootBundle.loadString('assets/data/plants.json');

    // Decode the JSON string to a Map
    var jsonMap = jsonDecode(data) as List;
    return jsonMap.map((jsonElement) => Plant.fromMap(jsonElement)).toList();
    
  }
}
