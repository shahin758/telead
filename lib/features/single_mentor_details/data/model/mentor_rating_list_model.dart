class ReviewSectionModel {
  final String image;
  final String name;
  final String title;
  final String icon;

  ReviewSectionModel({
    required this.image,
    required this.name,
    required this.title,
    required this.icon,
  });
}

List<ReviewSectionModel> mentorList = [
  ReviewSectionModel(
    image: "assets/images/profile-2.png",
    name: "Heather McMullen",
      icon: "assets/images/like.svg",
    title:
        "The Course is Very Good dolor sit amet, con sect tur adipiscing elit. Naturales divitias dixit parab les esse..",
  ),
  ReviewSectionModel(
    image: "assets/images/profile-3.png",
    name: "Natasha Lambert",
    icon: "assets/icons/empty_like.svg",
    title:
        "The Course is Very Good dolor veterm, quo etiam utuntur hi capiamus..",
  ),
];
