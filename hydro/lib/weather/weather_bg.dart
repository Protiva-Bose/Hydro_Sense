import 'package:flutter/material.dart';
import 'package:flutter_weather_bg_null_safety/bg/weather_cloud_bg.dart';
import 'package:flutter_weather_bg_null_safety/bg/weather_color_bg.dart';
import 'package:flutter_weather_bg_null_safety/bg/weather_night_star_bg.dart';
import 'package:flutter_weather_bg_null_safety/bg/weather_rain_snow_bg.dart';
import 'package:flutter_weather_bg_null_safety/bg/weather_thunder_bg.dart';
import 'package:flutter_weather_bg_null_safety/utils/weather_type.dart';

/// Weather background widget with dynamic weather effects and size change support
class WeatherBg extends StatefulWidget {
  final WeatherType weatherType;
  final double width;
  final double height;

  WeatherBg({
    Key? key,
    required this.weatherType,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  _WeatherBgState createState() => _WeatherBgState();
}

class _WeatherBgState extends State<WeatherBg>
    with SingleTickerProviderStateMixin {
  WeatherType? _oldWeatherType;
  bool needChange = false;
  var state = CrossFadeState.showSecond;

  @override
  void didUpdateWidget(WeatherBg oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.weatherType != oldWidget.weatherType) {
      // If weather type changes, set for animation
      _oldWeatherType = oldWidget.weatherType;
      needChange = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    var oldBgWidget;
    if (_oldWeatherType != null) {
      oldBgWidget = WeatherItemBg(
        weatherType: _oldWeatherType!,
        width: widget.width.isNaN ? 100.0 : widget.width,  // Fallback if NaN
        height: widget.height.isNaN ? 100.0 : widget.height, // Fallback if NaN
      );
    }
    var currentBgWidget = WeatherItemBg(
      weatherType: widget.weatherType,
      width: widget.width.isNaN ? 100.0 : widget.width,
      height: widget.height.isNaN ? 100.0 : widget.height,
    );
    if (oldBgWidget == null) {
      oldBgWidget = currentBgWidget;
    }
    var firstWidget = currentBgWidget;
    var secondWidget = currentBgWidget;
    if (needChange) {
      if (state == CrossFadeState.showSecond) {
        state = CrossFadeState.showFirst;
        firstWidget = currentBgWidget;
        secondWidget = oldBgWidget;
      } else {
        state = CrossFadeState.showSecond;
        secondWidget = currentBgWidget;
        firstWidget = oldBgWidget;
      }
    }
    needChange = false;
    return SizeInherited(
      child: AnimatedCrossFade(
        firstChild: firstWidget,
        secondChild: secondWidget,
        duration: const Duration(milliseconds: 300),
        crossFadeState: state,
      ),
      size: Size(widget.width, widget.height),
    );
  }
}

class WeatherItemBg extends StatelessWidget {
  final WeatherType weatherType;
  final double? width;
  final double? height;

  WeatherItemBg({Key? key, required this.weatherType, this.width, this.height})
      : super(key: key);

  /// Builds the starry night background for clear nights
  Widget _buildNightStarBg() {
    if (weatherType == WeatherType.sunnyNight) {
      return WeatherNightStarBg(
        weatherType: weatherType,
      );
    }
    return Container();
  }

  /// Builds the thunderstorm background effect
  Widget _buildThunderBg() {
    if (weatherType == WeatherType.thunder) {
      return WeatherThunderBg(
        weatherType: weatherType,
      );
    }
    return Container();
  }

  /// Builds the rain and snow background effect
  Widget _buildRainSnowBg() {
    if (WeatherUtil.isSnowRain(weatherType)) {
      return WeatherRainSnowBg(
        weatherType: weatherType,
        viewWidth: width?.isNaN == false ? width! : 100.0,  // Fallback width if NaN
        viewHeight: height?.isNaN == false ? height! : 100.0, // Fallback height if NaN
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    // Ensure width and height are valid numbers
    double validWidth = (width?.isNaN == false && width != null) ? width! : 100.0;
    double validHeight = (height?.isNaN == false && height != null) ? height! : 100.0;

    return Container(
      width: validWidth,
      height: validHeight,
      child: ClipRect(
        child: Stack(
          children: [
            WeatherColorBg(weatherType: weatherType),
            WeatherCloudBg(weatherType: weatherType),
            _buildRainSnowBg(),
            _buildThunderBg(),
            _buildNightStarBg(),
          ],
        ),
      ),
    );
  }
}

class SizeInherited extends InheritedWidget {
  final Size size;

  const SizeInherited({
    Key? key,
    required Widget child,
    required this.size,
  }) : super(key: key, child: child);

  static SizeInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SizeInherited>();
  }

  @override
  bool updateShouldNotify(SizeInherited old) {
    return old.size != size;
  }
}
