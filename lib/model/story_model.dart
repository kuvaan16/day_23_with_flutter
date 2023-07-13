import 'dart:ui';

class Story {
  String name;
  String dcnum;
  String img;
  Color backColor;
  Story(
      {required this.name,
      required this.dcnum,
      required this.img,
      required this.backColor});
}

List<Story> storylist = [
  Story(
    name: "Cough &\nCold",
    dcnum: "10",
    img: "img/img1.png",
    backColor: Color(0xffFBB97C),
  ),
  Story(
    name: "Heart\nSpecialist",
    dcnum: "17",
    img: "img/img2.png",
    backColor: Color(0xffF69383),
  ),
  Story(
    name: "Diabetes\nCare",
    dcnum: "27",
    img: "img/img3.png",
    backColor: Color(0xffEACBCB),
  ),
];
