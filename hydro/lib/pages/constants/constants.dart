import 'package:flutter/material.dart';
class TextWidget extends StatelessWidget {
  final String label;
  final double fontSize;
  final Color? color;

  const TextWidget({
    Key? key,
    required this.label,
    this.fontSize = 16,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}

Color scaffoldBackgroundColor = const Color(0xFF343541);
Color cardColor = const Color(0xFF444654);

List<String> models = [
  'Model1',
  'Model2',
  'Model3',
  'Model4',
  'Model5',
  'Model6',
];
List<DropdownMenuItem<String>>? get getModelsItem {
  List<DropdownMenuItem<String>>? modelsItems =
      List<DropdownMenuItem<String>>.generate(
          models.length,
          (index) => DropdownMenuItem(
            value: models[index],
              child: TextWidget(label: models[index], fontSize: 15,)));
  return modelsItems;
}
// final
// chatMesseges=[
//   {
//     "msg":"Hello who are you?",
//     "chatIndex":0,
//   },
//   {
//     "msg":"What is flutter",
//     "chatIndex":0,
//   },
//   {
//     "msg":"what is the subject of HydroSense",
//     "chatIndex":"Farmers face significant water-related challenges from unpredictable weather, pests, and diseases, affecting crop health, profits, and food security. This tool aims to help farmers explore and analyze NASA datasets to address issues like droughts and floods, enabling them to improve their farming practices and mitigate the impact of extreme weather events.",
//   },
//   {
//     "msg":"the objective of this",
//     "chatIndex":"Our work focuses on designing a tool that connects farmers with NASA's satellite and geospatial datasets to address water-related environmental challenges. By integrating real-time data and analysis, the tool empowers farmers to optimize production, manage resources, and make informed decisions about water use. It simplifies complex data into practical insights, making it easy for farmers to access relevant information tailored to their specific needs, improving prediction, risk management, and decision-making processes.",
//   },
//   {
//     "msg":"how can i plant thr tree",
//     "chatIndex":1,
//   },
//   {
//     "msg":"how can save us from flood",
//     "chatIndex":1,
//   },
// ];
