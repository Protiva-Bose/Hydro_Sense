import 'package:flutter/material.dart';
import 'package:flutter_weather_bg_null_safety/bg/weather_bg.dart';
import 'package:flutter_weather_bg_null_safety/flutter_weather_bg.dart';
import 'package:hydro/weather/weather_model.dart';
import 'package:intl/intl.dart';

class TodaysWeather extends StatefulWidget {
  final WeatherModel? weatherModel;
  const TodaysWeather({Key? key, this.weatherModel}) : super(key: key);

  @override
  State<TodaysWeather> createState() => _TodaysWeatherState();
}

class _TodaysWeatherState extends State<TodaysWeather> {
  @override
  Widget build(BuildContext context) {
    // Safeguard against NaN values for width and height
    double validWidth = MediaQuery.of(context).size.width;
    double validHeight = 350.0; // Default height for the weather background

    // Extract date safely and handle potential null values
    String formattedDate = "";
    try {
      formattedDate = DateFormat.yMMMMEEEEd().format(DateTime.parse(
          widget.weatherModel?.current?.lastUpdated.toString() ??
              DateTime.now().toString()));
    } catch (e) {
      formattedDate = DateFormat.yMMMMEEEEd().format(DateTime.now());
    }

    // Extract image URL safely
    String imageUrl =
        "https://via.placeholder.com/50"; // Placeholder if image is null or invalid
    if (widget.weatherModel?.current?.condition?.icon != null) {
      imageUrl = "http:${widget.weatherModel?.current?.condition?.icon}";
    }

    return Stack(
      children: [
        // Weather background with safe values
        WeatherBg(
          weatherType: WeatherType.sunnyNight,
          width: validWidth,
          height: validHeight,
        ),
        Positioned.fill(
          child: SingleChildScrollView( // Making the content scrollable
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8),
                  child: Container(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        // Safely display location name
                        Text(
                          widget.weatherModel?.location?.name ?? "",
                          style: const TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        // Safely display the date
                        Text(
                          formattedDate,
                          style: const TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Row to display weather icon and temperature
                Row(
                  children: [
                    const SizedBox(width: 10),
                    // Safely display the weather condition image
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white10,
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        imageUrl,
                        width: 50, // Default image size
                        height: 50,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.error, color: Colors.red); // Error fallback
                        },
                      ),
                    ),
                    const Spacer(),

                    // Display temperature
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Text(
                            widget.weatherModel?.current?.tempC
                                ?.round()
                                .toString() ??
                                "--",
                            style: const TextStyle(
                                color: Colors.pink,
                                fontSize: 80,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Text(
                          "°C",
                          style: TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      widget.weatherModel?.current?.condition?.text ?? "",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // Feels like, Wind, Humidity, Visibility Info
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              const Text(
                                "Feels Like",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                              Text(
                                widget.weatherModel?.current?.feelslikeC?.round().toString() ?? "--",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                "Wind",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                              Text(
                                "${widget.weatherModel?.current?.windKph?.round() ?? "--"} km/h",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              const Text(
                                "Humidity",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                              Text(
                                "${widget.weatherModel?.current?.humidity ?? ""}%",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                "Visibility",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                              Text(
                                "${widget.weatherModel?.current?.visKm ?? ""} km",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
