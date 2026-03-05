class CoursesCardModel {
  final String img;
  final String courseName;
  final String title;
  final String rate;
  final String totalHrs;
  final String? range;
  final String? certificate;
  final String? completelec;

  CoursesCardModel({
    required this.img,
    required this.courseName,
    required this.title,
    required this.rate,
    required this.totalHrs,
    this.range,
    this.completelec,
    this.certificate,
  });
}

List<CoursesCardModel> courses = [
  CoursesCardModel(
    img: "assets/images/ui_ux.jpg",
    courseName: "UI/UX Design",
    title: "Intro to UI/UX Design",
    rate: "4.4",
    totalHrs: "3 Hrs 06 Mins",
    range: "assets/images/range.svg",
    completelec: "93/125",
  ),

  CoursesCardModel(
    img: "assets/images/graphic_design.jpg",
    courseName: "Graphic Design",
    title: "Advance Diploma in Grapgic Design",
    rate: "4.7",
    totalHrs: "3 Hrs 28 Mins",
    certificate: "VIEW CERTIFICATE",
  ),

  CoursesCardModel(
    img: "assets/images/digital_marketing.webp",
    courseName: "Digital Marketing",
    title: "Setup your Graphic Des..",
    rate: "4.2",
    totalHrs: "4 Hrs 05 Mins",
    certificate: "VIEW CERTIFICATE",
  ),

  CoursesCardModel(
    img: "assets/images/web.webp",
    courseName: "Web Development",
    title: "Web Developer concept",
    rate: "4.8",
    totalHrs: "3 Hrs 50 Mins",
    certificate: "VIEW CERTIFICATE",
  ),
];
