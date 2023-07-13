import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "img/doctor_pic2.png",
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr.Stefeni\nAlbert",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "Heart Speailist",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(34, 255, 153, 0),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.email,
                            color: Colors.orange,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(34, 244, 67, 54),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.call,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(35, 158, 158, 158),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.videocam_rounded,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "About",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Dr.Stefeni Albert is lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea.",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.grey,
                          size: 18,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Address",
                            ),
                            Text(
                              "House # 2, Road #5,\nGreen Road\nDhanmondi, Dhaka,\nBangladesh,",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.grey,
                          size: 18,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Daily Practict",
                            ),
                            Text(
                              "Monday - Friday\nOpen till 7 Pm",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Image.asset(
                  "img/map.png",
                  height: 170,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Activity",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.orange[200],
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(57, 255, 255, 255)),
                        child: Icon(
                          Icons.library_books_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "List Of\nSchedule",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(57, 255, 255, 255)),
                        child: Icon(
                          Icons.post_add_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Doctor's\nDaily Post",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
