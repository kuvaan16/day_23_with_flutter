import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../model/category_type.dart';

class CatyType extends StatefulWidget {
  const CatyType({super.key});

  @override
  State<CatyType> createState() => _CatyTypeState();
}

class _CatyTypeState extends State<CatyType> {
  int index1 = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: typelist.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == index1) {
            return Container(
              alignment: Alignment.center,
              height: 20,
              margin: EdgeInsets.only(right: 30),
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(89, 255, 153, 0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  typelist[index].name,
                  style: TextStyle(
                    color: Colors.orange[700],
                  ),
                ),
              ),
            );
          } else {
            return Container(
              alignment: Alignment.center,
              height: 20,
              margin: EdgeInsets.only(right: 30),
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              child: InkWell(
                onTap: () {
                  setState(() {
                    index1 = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(),
                  child: Text(
                    typelist[index].name,
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
