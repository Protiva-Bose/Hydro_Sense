import 'package:flutter/material.dart';
import 'package:hydro/weather/future_forecast_listitem.dart';
import 'package:hydro/weather/hourly_weather_listitem.dart';
import 'package:hydro/weather/weather_model.dart';
import 'package:hydro/weather/api_service.dart';
import 'package:hydro/weather/todays_weather.dart';

class Homee extends StatefulWidget {
  const Homee({Key? key}) : super(key: key);

  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  ApiService apiService = ApiService();
  final _textFieldController = TextEditingController();
  String searchText = "Dhaka"; // Default to Dhaka

  Future<void> _showTextInputDialog(BuildContext context) async {
    final text = await showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Search Location"),
          content: TextField(
            controller: _textFieldController,
            decoration: const InputDecoration(hintText: "Search by city, zip, lat, long"),
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                if (_textFieldController.text.isNotEmpty) {
                  Navigator.pop(context, _textFieldController.text);
                } else {
                  Navigator.pop(context);
                }
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );

    if (text != null && text.isNotEmpty) {
      setState(() {
        searchText = text;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(
          child: Text(
            'Weather App',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await _showTextInputDialog(context);
            },
            icon: const Icon(Icons.search_rounded),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                searchText = "Dhaka"; // Reset to Dhaka
              });
            },
            icon: const Icon(Icons.my_location),
          ),
        ],
      ),
      body: SafeArea(
        child: FutureBuilder<WeatherModel?>(
          future: apiService.getWeatherData(searchText),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return const Center(child: Text('Error fetching weather data'));
            }
            if (snapshot.hasData) {
              WeatherModel? weatherModel = snapshot.data;

              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TodaysWeather(weatherModel: weatherModel),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Center(
                        child: Text(
                          'Weather by hours',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          Hour? hour = weatherModel
                              ?.forecast?.forecastday?[0].hour?[index];

                          return HourlyWeatherListitem(
                            hour: hour,
                          );
                        },
                        itemCount: weatherModel
                            ?.forecast?.forecastday?[0].hour?.length ?? 0,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Center(
                      child: Text(
                        'Next 7 days weather',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),


                    const SizedBox(height: 10),



                       SizedBox(
                        height: 100, // Adjust height as necessary
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            // Access the forecast for the specific day at the given index
                            var forecastDay = weatherModel?.forecast?.forecastday?[index];

                            // Create a custom widget to show each day's forecast like in the image
                            return FutureForecastListitem(
                              forecastday: forecastDay,
                            );
                          },
                          // Limit the forecast to the next 7 days
                          itemCount: weatherModel?.forecast?.forecastday?.length ?? 0,
                          scrollDirection: Axis.vertical, // Scroll vertically for multiple days
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                        ),
                      ),




                    SizedBox(
                      height: 100, // Adjust height as necessary
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          // Access the forecast for the specific day at the given index
                          var forecastDay = weatherModel?.forecast?.forecastday?[index];

                          // Create a custom widget to show each day's forecast like in the image
                          return FutureForecastListitem(
                            forecastday: forecastDay,
                          );
                        },
                        // Limit the forecast to the next 7 days
                        itemCount: weatherModel?.forecast?.forecastday?.length ?? 1,
                        scrollDirection: Axis.vertical, // Scroll vertically for multiple days
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                      ),
                    ),


                    SizedBox(
                      height: 100, // Adjust height as necessary
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          // Access the forecast for the specific day at the given index
                          var forecastDay = weatherModel?.forecast?.forecastday?[index];

                          // Create a custom widget to show each day's forecast like in the image
                          return FutureForecastListitem(
                            forecastday: forecastDay,
                          );
                        },
                        // Limit the forecast to the next 7 days
                        itemCount: weatherModel?.forecast?.forecastday?.length ?? 1,
                        scrollDirection: Axis.vertical, // Scroll vertically for multiple days
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                      ),
                    ),


                    SizedBox(
                      height: 100, // Adjust height as necessary
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          // Access the forecast for the specific day at the given index
                          var forecastDay = weatherModel?.forecast?.forecastday?[index];

                          // Create a custom widget to show each day's forecast like in the image
                          return FutureForecastListitem(
                            forecastday: forecastDay,
                          );
                        },
                        // Limit the forecast to the next 7 days
                        itemCount: weatherModel?.forecast?.forecastday?.length ?? 1,
                        scrollDirection: Axis.vertical, // Scroll vertically for multiple days
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                      ),
                    ),


                    SizedBox(
                      height: 100, // Adjust height as necessary
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          // Access the forecast for the specific day at the given index
                          var forecastDay = weatherModel?.forecast?.forecastday?[index];

                          // Create a custom widget to show each day's forecast like in the image
                          return FutureForecastListitem(
                            forecastday: forecastDay,
                          );
                        },
                        // Limit the forecast to the next 7 days
                        itemCount: weatherModel?.forecast?.forecastday?.length ?? 1,
                        scrollDirection: Axis.vertical, // Scroll vertically for multiple days
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                      ),
                    ),


                    SizedBox(
                      height: 100, // Adjust height as necessary
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          // Access the forecast for the specific day at the given index
                          var forecastDay = weatherModel?.forecast?.forecastday?[index];

                          // Create a custom widget to show each day's forecast like in the image
                          return FutureForecastListitem(
                            forecastday: forecastDay,
                          );
                        },
                        // Limit the forecast to the next 7 days
                        itemCount: weatherModel?.forecast?.forecastday?.length ?? 1,
                        scrollDirection: Axis.vertical, // Scroll vertically for multiple days
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                      ),
                    ),


                    SizedBox(
                      height: 100, // Adjust height as necessary
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          // Access the forecast for the specific day at the given index
                          var forecastDay = weatherModel?.forecast?.forecastday?[index];

                          // Create a custom widget to show each day's forecast like in the image
                          return FutureForecastListitem(
                            forecastday: forecastDay,
                          );
                        },
                        // Limit the forecast to the next 7 days
                        itemCount: weatherModel?.forecast?.forecastday?.length ?? 1,
                        scrollDirection: Axis.vertical, // Scroll vertically for multiple days
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                      ),
                    ),



                  ],
                ),
              );
            }
            return const Center(child: Text('No data available'));
          },
        ),
      ),
    );
  }
}

