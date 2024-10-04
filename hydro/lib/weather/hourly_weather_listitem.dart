import 'package:flutter/material.dart';
import 'package:hydro/weather/weather_model.dart';
import 'package:intl/intl.dart';
class HourlyWeatherListitem extends StatefulWidget {

  final Hour?hour;
  const HourlyWeatherListitem({Key?key,this.hour}): super(key:key);

  @override
  State<HourlyWeatherListitem> createState() => _HourlyWeatherListitemState();
}

class _HourlyWeatherListitemState extends State<HourlyWeatherListitem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white24,borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(widget.hour?.tempC?.round().toString()??"",style: TextStyle(
                    color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold
                  ),),
                ),

              Text("o",style: TextStyle(
                  color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold
              ),),
            ],
          ),

          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.teal,shape: BoxShape.circle,
            ),
            child: Image.network("http:${widget.hour?.condition?.icon.toString()}"),
          ),

          Text(DateFormat.j().format(DateTime.parse(widget.hour?.time?.toString()??"")),style:
            TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
