class MentorModel {
  final String name;
  final String image;

  const MentorModel({
    required this.name,
    required this.image,
  });
}

const List<MentorModel> mentors = [
  MentorModel(
    name: "Branden S. Baker",
    image: "assets/images/Branden.png",
  ),
  MentorModel(
    name: "Gregory M. Padgett",
    image: "assets/images/Gregory.png",
  ),
  MentorModel(
    name: "Marie F. Munoz",
    image: "assets/images/Marie.png",
  ),
  MentorModel(
    name: "Sandra C. Florence",
    image: "assets/images/Sandra.png",
  ),
  MentorModel(
    name: "Justin W. Foxwell",
    image: "assets/images/Justin.png",
  ),
  MentorModel(
    name: "William K. Olivas",
    image: "assets/images/William.png",
  ),
];