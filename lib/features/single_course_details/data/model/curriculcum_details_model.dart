class CurriculcumDetailsModel {
  final String image, title, subTitle;

  CurriculcumDetailsModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<CurriculcumDetailsModel> details = [
  CurriculcumDetailsModel(
    image: "assets/icons/one.svg",
    title: "Why Using Graphic De..",
    subTitle: "15 Mins",
  ),
  CurriculcumDetailsModel(
    image: "assets/icons/two.svg",
    title: "Setup Your Graphic De..",
    subTitle: "10 Mins",
  ),
];
