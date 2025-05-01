import 'package:flutter/material.dart';
import 'package:tune_player/components/tune_item.dart';
import 'package:tune_player/model/modelitem.dart';

class TuneView extends StatelessWidget {
 const TuneView({super.key});

final List <ModelItem> items = const [
  ModelItem(title:'Red', color: Colors.red, audio: 'sounds/note1.wav'),
  ModelItem(title:'Orange', color: Colors.orange, audio: 'sounds/note2.wav'),
  ModelItem(title:'Yellow', color: Colors.yellow, audio: 'sounds/note3.wav'),
  ModelItem(title:'Green', color: Colors.lightGreen, audio: 'sounds/note4.wav'),
  ModelItem(title:'Dark Green', color:Colors.green , audio: 'sounds/note5.wav'),
  ModelItem(title:'Blue', color: Colors.blue, audio: 'sounds/note6.wav'),
  ModelItem(title:'Purple', color: Colors.purple, audio: 'sounds/note7.wav'),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('Tune Player', style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF253238),
      ),
      body: Column(
        children: items.map((item) => TuneItem(item: item)).toList(),
          //children: List.generate(items.length, (index) => TuneItem(item: items[index]),),
      ),
    );
  }
}

//  body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: ( context, index) {
//           return TuneItem(item:items[index]);
//         },
//       ),