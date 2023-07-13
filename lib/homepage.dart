import 'package:day_23_with_flutter/profile.dart';
import 'package:day_23_with_flutter/widgets/caty_type.dart';
import 'package:day_23_with_flutter/widgets/story.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'model/story_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 40),
        child: ListView(
          children: [
            Text(
              "Find Your\nConsultation",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                letterSpacing: .3,
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CatyType(),
            SizedBox(
              height: 10,
            ),
            StoryPage(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Doctors",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                    color: Color.fromARGB(35, 255, 153, 0),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Image.asset(
                      "img/doctor_pic.png",
                      width: 45,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr.Stefeni Albert",
                          style: TextStyle(
                              color: Colors.orangeAccent,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Heart Speailist",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 109,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                      decoration: BoxDecoration(
                          color: Colors.amber[700],
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Call",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
