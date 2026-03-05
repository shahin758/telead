class MentorCoursesModel {
  final String img;
  final String courseName;
  final String title;
  final String rate;
  final String numOfStd;
  final String save;
  final String discount;
  final String price;

  MentorCoursesModel({
    required this.img,
    required this.courseName,
    required this.title,
    required this.rate,
    required this.numOfStd,
    required this.save,
    required this.price,
    required this.discount,
  });
}

List<MentorCoursesModel> mentor = [
  MentorCoursesModel(
    img: "assets/images/ui_ux.jpg",
    courseName: "Graphic Design",
    title: "Graphic Design Advan..",
    rate: "4.2",
    numOfStd: "7830 Std",
    save: "assets/icons/saved.svg",
    price: "\$42",
    discount: "\$28",
  ),

  MentorCoursesModel(
    img: "assets/images/graphic_design.jpg",
    courseName: "Graphic Design",
    title: "Advance Diploma in Grapgic Design",
    rate: "4.7",
    numOfStd: "7830 Std",
    discount: "\$37",
    save: "assets/icons/un_saved.svg",
    price: "\$41",
  ),
];
