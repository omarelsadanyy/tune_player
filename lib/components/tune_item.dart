import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tune_player/model/modelitem.dart';


class TuneItem extends StatelessWidget {
   TuneItem({super.key, required this.item});
   final ModelItem item;
   Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
          onTap:(){
            final player = AudioPlayer();
            player.play(AssetSource(item.audio));
          },
          child: Container(
            color:item.color,        
          ),
        ),
    );
    
  }
}