class InboxCallsModel {
  final String image;
  final String name;
  final String icon;
  final String statusCall;
  final String date;
  InboxCallsModel({
    required this.image,
    required this.name,
    required this.icon,
    required this.statusCall,
    required this.date,
  });
}

List<InboxCallsModel> call = [
  InboxCallsModel(
    image: '',
    name: 'Patricia D. Regalado',
    icon: 'assets/images/incoming.svg',
    statusCall: 'incoming',
    date: 'Nov 03, 202X',
  ),
  InboxCallsModel(
    image: '',
    name: 'Jonathon K. Nix',
    icon: 'assets/images/incoming.svg',
    statusCall: 'incoming',
    date: 'Nov 05, 202X',
  ),
  InboxCallsModel(
    image: '',
    name: 'Ellen N. Cranford',
    icon: 'assets/images/outgoing.svg',
    statusCall: 'Outgoing',
    date: 'Nov 06, 202X',
  ),
  InboxCallsModel(
    image: '',
    name: 'William W. Spicer',
    icon: 'assets/images/missed.svg',
    statusCall: 'Missed',
    date: 'Nov 15, 202X',
  ),
  InboxCallsModel(
    image: '',
    name: 'Scott D. Chambers',
    icon: 'assets/images/outgoing.svg',
    statusCall: 'Outgoing',
    date: 'Nov 17, 202X',
  ),
  InboxCallsModel(
    image: '',
    name: 'Hilda M. Hernandez',
    icon: 'assets/images/missed.svg',
    statusCall: 'Missed',
    date: 'Nov 18, 202X',
  ),
  InboxCallsModel(
    image: '',
    name: 'Hilda M. Hernandez',
    icon: 'assets/images/outgoing.svg',
    statusCall: 'Outgoing',
    date: ' Nov 19, 202X',
  ),
];
