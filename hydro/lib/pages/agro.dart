import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hydro/pages/chat_widget.dart';
import 'package:hydro/pages/constants/constants.dart';
import 'package:hydro/pages/services.dart';

class Agro extends StatefulWidget {
  const Agro({super.key});

  @override
  State<Agro> createState() => _AgroState();
}

class _AgroState extends State<Agro> {
  bool _isTyping = true;
  TextEditingController textEditingController = TextEditingController();

  // Ensure chatIndex is an integer
  List<Map<String, dynamic>> chatMesseges = [
    {"msg": "Hello who are you?", "chatIndex": 0},
    {"msg": "I'm fine dear,what about you? How can I help you ?Tell me clearly,I will try my best and solve your all problem issues.", "chatIndex": 1},
    {"msg": "What is the subject of HydroSense?", "chatIndex": 0},
    {"msg": "HydroSense is an app for the flood and sudden weather change affected farmers.", "chatIndex": 1},
    {"msg": "How can I plant the tree?", "chatIndex": 0},
    {"msg": "To plant a tree, first choose a tree suitable for your climate and space. Dig a hole that is two to three times wider than the tree’s root ball, and plant it with the root ball level to the ground. Water the tree immediately and spread mulch around the base to retain moisture. Continue to care for the tree by watering regularly and monitoring for any issues.?", "chatIndex": 1},
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blueGrey.shade800,

      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: Text(
          'Helping AI',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () async {
             await Services.showModalSheet(buildcontext: context);
            },
            icon: const Icon(Icons.more_vert_rounded, color: Colors.black),
          ),
        ],
        elevation: 2,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/img_33.png',
            width: 10,
            height: 10,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: chatMesseges.length,
                itemBuilder: (context, index) {
                  return ChatWidget(
                    msg: chatMesseges[index]["msg"].toString(),
                    chatIndex: chatMesseges[index]["chatIndex"].toString(),
                  );
                },
              ),
            ),
            if (_isTyping) ...[
              const SpinKitThreeBounce(
                color: Colors.white,
                size: 18,
              ),
              const SizedBox(height: 15),
              Material(
                color: _isTyping
                    ? (chatMesseges.last["chatIndex"].toString() == "0"
                    ? Colors.blueGrey.shade800
                    : Colors.grey.shade700)
                    : Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: const TextStyle(color: Colors.white),
                          controller: textEditingController,
                          onSubmitted: (value) {
                            // Handle text submission
                            print('Submitted: $value');
                            textEditingController.clear();
                          },
                          decoration: const InputDecoration.collapsed(
                            hintText: "How can I help you?",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Handle icon button press
                          final text = textEditingController.text;
                          print('Sent: $text');
                          textEditingController.clear();
                        },
                        icon: const Icon(Icons.send, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
