import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Story extends StatefulWidget {
  const Story({super.key});

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  // List of images (use 'image_path' correctly)
  List imageList = [
    {"id": 1, "image_path": 'assets/images/f.gif'},
    {"id": 2, "image_path": 'assets/images/s.gif'},
    {"id": 3, "image_path": 'assets/images/t.gif'},
    {"id": 4, "image_path": 'assets/images/fr.gif'},
    {"id": 5, "image_path": 'assets/images/fi.gif'},
    {"id": 6, "image_path": 'assets/images/si.gif'},
    {"id": 7, "image_path": 'assets/images/se.gif'},
    {"id": 8, "image_path": 'assets/images/e.gif'},
    {"id": 9, "image_path": 'assets/images/n.gif'},
    {"id": 10, "image_path": 'assets/images/te.gif'},
    {"id": 11, "image_path": 'assets/images/el.gif'},
    {"id": 12, "image_path": 'assets/images/tw.gif'},
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Story behind HydroSense",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/images/img_1.png'),
    fit: BoxFit.cover,
    ),
    ),
        child:  Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    print(currentIndex);
                  },
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                    // Map over the imageList and pass the correct 'image_path'
                    items: imageList.map((item) {
                      return Container(
                        child: Center(
                          child: Image.asset(
                            item['image_path'], // Corrected to use 'image_path'
                            fit: BoxFit.cover,
                            width: 1000,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30,left: 35,right: 35,bottom: 10),
              child: Column(
                children: [
                  Text('Farmers are working  very smoothly.',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                  Text('Suddenly ocurred flood and wash away everything.',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Text('If they had our HydroSense app then get all the update thing that you are showing in the figure->',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),),
                  Text("Know abuut today's with upcoming weather,water level,get help from AI,communicate with agriculture experts and get knowledge to protect their crops and how tackle their disaster position.",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blue.shade800),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
