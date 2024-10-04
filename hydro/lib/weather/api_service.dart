import 'dart:convert';
import 'package:http/http.dart';
import 'package:hydro/weather/constant.dart'; // Ensure base_url is properly defined
import 'package:hydro/weather/weather_model.dart';

class ApiService {
  Future<WeatherModel> getWeatherData(String searchText) async {
    String url = "$base_url&q=$searchText&days=7";

    try {
      // Use the constructed 'url' variable instead of hardcoding the URL
      Response response = await get(Uri.parse(url));

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        WeatherModel weatherModel = WeatherModel.fromJson(json);
        return weatherModel;
      } else {
        throw ("No data found");
      }
    } catch (e) {
      print("Error: ${e.toString()}");
      throw e.toString();
    }
  }
}
