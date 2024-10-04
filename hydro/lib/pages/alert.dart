import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(

        backgroundColor: Colors.grey.shade100,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            'Help & Support',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          backgroundColor: Colors.blueAccent,
          bottom: TabBar(tabs: [
            Tab(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child:
                  Row(
                    children: [

                      Icon(
                        Icons.waterfall_chart,
                        color: Colors.white,
                        size: 12,
                      ),
                      SizedBox(width: 3),
                      Text(
                        'Water Level',
                        style: TextStyle(color: Colors.white, fontSize: 10,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Tab(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: Row(
                    children: [

                      Icon(
                        Icons.crisis_alert,
                        color: Colors.white,
                        size: 12,
                      ),
                      SizedBox(width: 3),
                      Text(
                        'Alert Centre',
                        style: TextStyle(color: Colors.white, fontSize: 10,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),


            Tab(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Row(
                    children: [

                      Icon(
                        Icons.crisis_alert,
                        color: Colors.white,
                        size: 12,
                      ),
                      SizedBox(width: 3),
                      Text(
                        'Hazard',
                        style: TextStyle(color: Colors.white, fontSize: 11,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Tab(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all( 0),
                  child: Row(
                    children: [

                      Icon(
                        Icons.safety_check,
                        color: Colors.white,
                        size: 12,
                      ),
                      SizedBox(width: 2),
                      Text(
                        'Safe Guard',
                        style: TextStyle(color: Colors.white, fontSize: 11,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),



          ]),
          actions: [
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 20),
            PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined, color: Colors.white),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: '1',
                    child: Text('NewGroup'),
                  ),
                  PopupMenuItem(
                    value: '2',
                    child: Text('Settings'),
                  ),
                  PopupMenuItem(
                    value: '1',
                    child: Text('LogOut'),
                  ),
                ]),
          ],
        ),
        body: TabBarView(children: [




          // 1st tab content
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:
          Padding(
            padding: const EdgeInsets.only(top: 10,right: 5,left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Stack(
                  children:[ Column(
                    children: [

                      Row(
                        children: [
                          Image.asset(
                            'assets/images/img_12.png',
                            width: 120,
                            height: 80,
                          ),

                          Text(
                            'WATER',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 60,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Image.asset('assets/images/water.gif'),
                    ],
            ),
                  ],
                ),


                Divider(color: Colors.grey, thickness: 1),
                Text(
                  'TODAY',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'THE LEVEL OF WATER',
                  style: TextStyle(color: Colors.blue, fontSize: 25),
                ),
                Text(
                  'LOW',
                  style: TextStyle(color: Colors.blue, fontSize: 80),
                ),
                Container(
                  width: 430,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade100,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.blueAccent,
                        blurRadius: 2,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 140),
                      Icon(Icons.water_drop),
                      Text(
                        'REMIND ME TO DRINK',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),  // Add spacing before the image
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Image.asset(
                      'assets/images/img_13.png',
                      width: 850,
                            height: 280,
                    ),
                  ),
                ),
              ],
            ),
          ),
    ),


          // 2nd tab content

      SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(padding: const EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 10),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //one
              Container(

                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 100,
                  height: 40,
                  child: Center(child: Text('Dashboard',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),)
              ),
             Divider(color: Colors.grey,thickness: 1,),
             //two
            Row(
              children: [
                Image.asset(
                  'assets/images/img_14.png',
                  width: 40,
                  height: 40,
                ),
                Column(
                  children: [
                    Text('Stalion Point :Nayarhat,Savar'),
                    Text('River name :Bangshi'),
                  ],
                )
              ],
            ),
              Padding(padding: const EdgeInsets.only(left: 30,right: 30),
              child: Divider(color: Colors.grey,thickness: 1,),),

              //3rd
              ListTile(
                leading: Image.asset(
                  'assets/images/img_15.png',
                  width: 40,
                  height: 40,
                ),
                title: Text('Flood Alert'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Water Level:3.86 mMSL'),
                    Text('Danger Level Level:6.86 mMSL'),
                  ],
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 40,
                  height: 20,
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 30,right: 30),
                child: Divider(color: Colors.grey,thickness: 1,),),

                 //4th
              ListTile(
                leading: Image.asset(
                  'assets/images/img_16.png',
                  width: 40,
                  height: 40,
                ),
                title: Text('Drought Alert'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('PSDI:0.78'),
                    Text('Referance:0.52 to 0.99(incipient dry soil'),
                  ],
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 40,
                  height: 20,
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 30,right: 30),
                child: Divider(color: Colors.grey,thickness: 1,),),

              //5th
              ListTile(
                leading: Image.asset(
                  'assets/images/img_17.png',
                  width: 40,
                  height: 40,
                ),
                title: Text('Moisture'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Presen:12%'),
                    Text('Referance:<17%'),
                  ],
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 40,
                  height: 20,
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 30,right: 30),
                child: Divider(color: Colors.grey,thickness: 1,),),


              ListTile(
                leading: Image.asset(
                  'assets/images/img_42.png',
                  width: 40,
                  height: 40,
                ),
                title: Text('HeatWave'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Temperature: 27 deg'),
                    Text('Humidity: 30%'),
                  ],
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 40,
                  height: 20,
                ),
              ),

              Padding(padding: const EdgeInsets.only(left: 30,right: 30),
                child: Divider(color: Colors.black,thickness: 1,),),


              ListTile(
                leading: Image.asset(
                  'assets/images/img_16.png',
                  width: 40,
                  height: 40,
                ),
                title: Text('Thunderstorm'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('No risk now'),
                    Text('Normal'),
                  ],
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 40,
                  height: 20,
                ),
              ),
              // Padding(padding: const EdgeInsets.only(left: 30,right: 30),
              //   child: Divider(color: Colors.grey,thickness: 1,),),
               SizedBox(height: 30,),
                //6th
              Container(

                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 160,
                  height: 40,
                  child: Center(child: Text('Alerts & Notifications',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),)
              ),
              Divider(color: Colors.grey,thickness: 1,),

              ListTile(
                leading: Icon(Icons.flood_outlined),
                title: Text('Flood Alert'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Status: ',style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('The current water level is below the danger level, but keep monitoring for any rapid increases.'),
                    Text('Action: ',style: TextStyle(fontWeight: FontWeight.w500)),
                    Text('No immediate danger, but precautionary measures should be in place as the water level is rising.')
                  ],
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 40,
                  height: 20,
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 30,right: 30),
                child: Divider(color: Colors.grey,thickness: 1,),),

              ListTile(
                leading: Icon(Icons.crisis_alert),
                title: Text('Drought Alert'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text('Status: ',style: TextStyle(fontWeight: FontWeight.w500)),
                    Text('The current PSDI indicates dry conditions approaching drought severity.'),
                    Text('Action: ',style: TextStyle(fontWeight: FontWeight.w500)),
                    Text('Drought conditions are likely. Initiate water conservation measures and monitor soil moisture levels closely to prevent damage to agriculture.')
                  ],
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 40,
                  height: 20,
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 30,right: 30),
                child: Divider(color: Colors.grey,thickness: 1,),),


              ListTile(
                leading: Icon(Icons.cleaning_services_outlined),
                title: Text('Moisture'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text('Status: ',style: TextStyle(fontWeight: FontWeight.w500)),
                    Text('Below danger level. Monitor closely.'),
                    Text('Status: ',style: TextStyle(fontWeight: FontWeight.w500)),
                    Text('Drought risk. Start conservation.')
                  ],
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 40,
                  height: 20,
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 30,right: 30),
                child: Divider(color: Colors.grey,thickness: 1,),),


              ListTile(
                leading: Icon(Icons.heat_pump_outlined),
                title: Text('Heatwave'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Status: ',style: TextStyle(fontWeight: FontWeight.w500)),
                    Text('The current temp is normal now and cool much,there are no possibilities of heatwaves.'),
                    Text('Action: ',style: TextStyle(fontWeight: FontWeight.w500)),
                    Text('No action needed.')
                  ],
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 40,
                  height: 20,
                ),
              ),

              Padding(padding: const EdgeInsets.only(left: 30,right: 30),
                child: Divider(color: Colors.grey,thickness: 1,),),


              ListTile(
                leading: Icon(Icons.thunderstorm),
                title: Text('Thunderstorm'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Status: ',style: TextStyle(fontWeight: FontWeight.w500)),
                    Text('There are no possiboilities of thunder.'),
                    Text('Action: ',style: TextStyle(fontWeight: FontWeight.w500)),
                    Text('No action needed.')
                  ],
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 40,
                  height: 20,
                ),
              ),

            ],
          ),),
      ),


          //third point
        SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Center(
                  child: Text('Farmers Health Hazards',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 26),),
                ),
                ListTile(
                  leading: Icon(Icons.report,color: Colors.red,),
                  title: Text('1.Exposure to Pesticides and Chemicals',style: TextStyle(fontWeight: FontWeight.w500),),
                  subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hazards: ',style: TextStyle(fontWeight: FontWeight.w600)),
                    Text('Farmers frequently handle chemical pesticides, fertilizers, and herbicides, which can cause respiratory issues, skin diseases, neurological disorders, and even cancer over long-term exposure.'),
                    Text('Solution: ',style: TextStyle(fontWeight: FontWeight.w600)),
                    Text('Use of protective gear (gloves, masks, goggles), proper pesticide application training, and promoting organic or eco-friendly alternatives.')
                  ],
                ),
                ),

                SizedBox(height: 15,),

                ListTile(
                  leading: Icon(Icons.personal_injury,color: Colors.green,),
                  title: Text('2.Physical Injuries',style: TextStyle(fontWeight: FontWeight.w500),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hazards: ',style: TextStyle(fontWeight: FontWeight.w600)),
                      Text('Farming involves heavy lifting, repetitive motions, and working with dangerous machinery, leading to musculoskeletal injuries, fractures, and cuts.'),
                      Text('Solution: ',style: TextStyle(fontWeight: FontWeight.w600)),
                      Text('Implement ergonomic tools, ensure proper machinery maintenance, train farmers on safe equipment use, and promote regular physical exercises to prevent injuries.')
                    ],
                  ),
                ),

                SizedBox(height: 15,),

                ListTile(
                  leading: Icon(Icons.sync_problem,color: Colors.redAccent,),
                  title: Text('3.Respiratory Problems',style: TextStyle(fontWeight: FontWeight.w500),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hazards: ',style: TextStyle(fontWeight: FontWeight.w600)),
                      Text("Inhalation of dust, mold, animal waste, or chemicals can lead to respiratory conditions like asthma, chronic bronchitis, and Farmer's Lung."),
                      Text('Solution: ',style: TextStyle(fontWeight: FontWeight.w600)),
                      Text('Encourage the use of masks or respirators, maintain proper ventilation in barns and workspaces, and minimize dust exposure through modern equipment.')
                    ],
                  ),
                ),


                SizedBox(height: 15,),

                ListTile(
                  leading: Icon(Icons.hail,color: Colors.blue,),
                  title: Text('4.Hail',style: TextStyle(fontWeight: FontWeight.w500),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hazards: ',style: TextStyle(fontWeight: FontWeight.w600)),
                      Text("Hailstones can be dangerous, damaging vehicles, homes, crops, and causing injury to people and animals."),
                      Text('Solution: ',style: TextStyle(fontWeight: FontWeight.w600)),
                      Text('Stay inside a sturdy building, away from windows, and park your vehicle under cover if possible.')
                    ],
                  ),
                ),

                SizedBox(height: 15,),

                ListTile(
                  leading: Icon(Icons.tornado,color: Colors.blueGrey,),
                  title: Text("5.Tornadoes: TextStyle(fontWeight: FontWeight.w500),"),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hazards: ',style: TextStyle(fontWeight: FontWeight.w600)),
                      Text("Severe thunderstorms may sometimes generate tornadoes, which can cause significant damage in a short period of time."),
                      Text('Solution: ',style: TextStyle(fontWeight: FontWeight.w600)),
                      Text(' If a tornado warning is issued, move to a small, windowless interior room on the lowest level of your building, such as a basement or bathroom.')
                    ],
                  ),
                ),

                SizedBox(height: 15,),

              ],
            ),)
        ),


          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 5,left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Stack(
                    children:[ Column(
                      children: [

                        Row(
                          children: [
                            Image.asset(
                              'assets/images/heat.png',
                              width: 120,
                              height: 110,
                            ),

                            Text(
                              'Heat Alert',
                              style: TextStyle(
                                  color: Colors.orangeAccent.shade400,
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Image.asset('assets/images/heat.gif',width: 600,),
                      ],
                    ),
                    ],
                  ),


                  Divider(color: Colors.grey, thickness: 1),
                  Text(
                    'TODAY',
                    style: TextStyle(
                        color: Colors.orangeAccent.shade700,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'THE LEVEL OF TEMPERATURE',
                    style: TextStyle(color: Colors.orangeAccent.shade700, fontSize: 25),
                  ),
                  Text(
                    'LOW',
                    style: TextStyle(color: Colors.orangeAccent.shade700, fontSize: 80),
                  ),
                  Container(
                    width: 430,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade100,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.blueAccent,
                          blurRadius: 2,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 110),
                        Icon(Icons.water_drop),
                        Text(
                          'REMIND ME TO DRINK',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  // Add spacing before the image
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0,left: 1),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Image.asset(
                        'assets/images/level.png',
                        width: 500,
                        height: 280,
                      ),
                    ),
                  ),







                  Divider(color: Colors.grey, thickness: 1),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Image.asset(
                        'assets/images/h.png',
                        width: 650,
                        height: 280,
                      ),
                    ),
                  ),






                  Divider(color: Colors.grey, thickness: 1),

                  //4th
                  Stack(
                    children:[ Column(
                      children: [

                        Row(
                          children: [
                            // Image.asset(
                            //   'assets/images/th.gif',
                            //   width: 120,
                            //   height: 120,
                            // ),
SizedBox(width: 40,),
                            Text(
                              'Thunderstorm',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(right: 140.0,left: 0),
                          child: Column(
                            children: [
                              Text('Thunderstorm Safety Tips :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 1.0,right: 300),
                          child: Text('Dangers:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                        Divider(color: Colors.grey, thickness: 1),
                        ListTile(
                             title: Row(
                               children: [
                                 Text('1.Lightning Strikes: ',style: TextStyle(fontWeight: FontWeight.w700),),
                                 Text('Can cause injury, fires.'),
                               ],
                             ),
                          subtitle:  Row(
                            children: [
                              Text('Tip:',style: TextStyle(fontWeight: FontWeight.w700),),
                              Text(' Stay indoors, avoid electronics and plumbing.'),
                            ],
                          ),
                        ),

                        ListTile(
                          subtitle:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('2.Strong Winds:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                              Text('Can knock down trees, power lines.'),
                              Text('Tip:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              Text('Secure outdoor items, stay away from windows.')
                            ],
                          ),
                        ),

                        ListTile(
                          subtitle:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('3.Heavy Rain & Flooding: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                              Text('Can cause flash floods.'),
                              Text('Tip:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              Text('Avoid flooded areas, move to higher ground.')
                            ],
                          ),
                        ),

                        ListTile(
                          subtitle:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('4.Hail: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                              Text('Damages property, causes injury.'),
                              Text('Tip:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              Text(' Stay indoors, avoid windows.')
                            ],
                          ),
                        ),

                        ListTile(
                          subtitle:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('5.Tornadoes:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                              Text('Can accompany severe storms.'),
                              Text('Tip:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              Text('Move to a low, windowless interior room.')
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey, thickness: 1),
                        Padding(
                          padding: const EdgeInsets.only(left: 1.0,right: 300),
                          child: Text('General Safety:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        ),

                        ListTile(
                          subtitle:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Before: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                              Text('Monitor weather alerts, secure loose items.'),
                              Text('During: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                              Text('Stay indoors, avoid water and open spaces.'),
                              Text('After: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                              Text('Check for damage, report hazards, avoid floodwater.'),
                          ],
                          ),
                        ),

                        Divider(color: Colors.grey, thickness: 1),
                        Image.asset('assets/images/thh.gif',width: 600,),
                      ],
                    ),
                    ],
                  ),
                  Divider(color: Colors.grey, thickness: 1),

                  Text('Today',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 40),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text('Now there is no risk',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 25),),
                        SizedBox(width: 120,),
                        Image.asset('assets/images/w.gif',width: 30),
                      ],
                    ),
                  ),
                  Text('Action: You can move easily',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 18),),
                  Image.asset('assets/images/t.png',width: 600,),

                ],
              ),
            ),
          ),


        ]),
      ),
    );
  }
}
