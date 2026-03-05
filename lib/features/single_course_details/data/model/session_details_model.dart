class SessionDetailsModel {
  final String icon, text;
  SessionDetailsModel({required this.icon, required this.text});
}

List<SessionDetailsModel> session =[
   SessionDetailsModel(icon: "assets/icons/lesson.svg", text: "25 Lessons"),
   SessionDetailsModel(icon: "assets/icons/access.svg", text: "Access Mobile, Desktop & TV"),
   SessionDetailsModel(icon: "assets/icons/level.svg", text: "Beginner Level"),
   SessionDetailsModel(icon: "assets/icons/audio.svg", text: "Audio Book"),
   SessionDetailsModel(icon: "assets/icons/life-time.svg", text: "Lifetime Access"),
   SessionDetailsModel(icon: "assets/icons/quiz.svg", text: "100 Quizzes"),
   SessionDetailsModel(icon: "assets/icons/certificate.svg", text: "Certificate of Completion"),
];
