import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../model/story_model.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: storylist.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(right: 15),
            padding: EdgeInsets.only(top: 15, left: 10,right: 35),
            decoration: BoxDecoration(
                color: storylist[index].backColor,
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(storylist[index].name,style: TextStyle(color: Colors.white),),
                SizedBox(height: 5,),
                Text(storylist[index].dcnum + " Doctors",style: TextStyle(fontSize: 12,color: Colors.white),),
                SizedBox(
                  height: 17,
                ),
                Image.asset(
                  storylist[index].img,
                  width: 80,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
