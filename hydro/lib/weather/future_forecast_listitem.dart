import 'package:flutter/material.dart';
import 'package:hydro/weather/weather_model.dart';
import 'package:intl/intl.dart';
class FutureForecastListitem extends StatefulWidget {
  final Forecastday? forecastday;
  const FutureForecastListitem({Key?key,this.forecastday}): super(key:key);

  @override
  State<FutureForecastListitem> createState() => _FutureForecastListitemState();
}

class _FutureForecastListitemState extends State<FutureForecastListitem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8),
      margin: EdgeInsets.all(8),
      width: double.infinity,
      child: Row(
        children: [
          Image.network("http:${widget.forecastday?.day?.condition?.icon??""}"),
          Expanded(child: Text("The next day",style: TextStyle(color: Colors.white),)),
          SizedBox(width: 5,),
          // Expanded(
          //     child: Text(DateFormat.MMMEd().format(DateTime.parse(widget.forecastday?.date.toString()??"")),
          //       style: TextStyle(color: Colors.white),),
          // ),

          Expanded(
            child: Text(widget.forecastday?.day?.condition?.text.toString()??"",
              style: TextStyle(color: Colors.white),),
          ),

          Expanded(
            child: Text("^${widget.forecastday?.day?.maxtempC?.round()}/${widget.forecastday?.day?.mintempC?.round()}",
              style: TextStyle(color: Colors.white,fontSize: 16),),
          ),

          Expanded(
            child: Text("^${widget.forecastday?.day?.mintempC?.round()}/${widget.forecastday?.day?.mintempC?.round()}",
              style: TextStyle(color: Colors.white,fontSize: 16),),
          ),


        ],
      ),
    );
  }
}


