class TransactionsCardModel {
  final String img;
  final String transactionName;
  final String title;
  final String paid;

  TransactionsCardModel({
    required this.img,
    required this.transactionName,
    required this.title,
    required this.paid,
  });
}

List<TransactionsCardModel> transaction = [
  TransactionsCardModel(
    img: "assets/images/web.webp",
    transactionName: "Build Personal Branding",
    title: "Web Designer",
    paid: "Paid",
  ),

  TransactionsCardModel(
    img: "assets/images/graphic_design.jpg",
    transactionName: "Mastering Blender 3D",
    title: "Ui/UX Designer",
    paid: "Paid",
  ),

  TransactionsCardModel(
    img: "assets/images/web.webp",
    transactionName: "Full Stack Web Developma",
    title: "Web Development",
    paid: "Paid",
  ),

  TransactionsCardModel(
    img: "assets/images/digital_marketing.webp",
    transactionName: "Complete UI Designer",
    title: "HR Management",
    paid: "Paid",
  ),

  TransactionsCardModel(
    img: "assets/images/transaction_list.png",
    transactionName: "Sharing Work with Team",
    title: "Finance & Accounting",
    paid: "Paid",
  ),
];
