class ReviewSectionModel {
  final String image;
  final String name;
  final String title;

  ReviewSectionModel({
    required this.image,
    required this.name,
    required this.title,
  });
}

List<ReviewSectionModel> reviews = [
  ReviewSectionModel(
    image: "assets/images/profile-2.png",
    name: "William S. Cunningham",
    title:
        "The Course is Very Good dolor sit amet, consect tur adipiscing elit. Naturales divitias dixit parab les esse, quod parvo",
  ),
  ReviewSectionModel(
    image: "assets/images/profile-3.png",
    name: "Martha E. Thompson",
    title:
        "The Course is Very Good dolor sit amet, consect tur adipiscing elit. Naturales divitias dixit parab les esse, quod parvo",
  ),
];
