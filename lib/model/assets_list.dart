class AssetsList {
  final String title, desc, image;

  AssetsList({
    required this.title,
    required this.desc,
    required this.image,
  });
}

List<AssetsList> slideList = [
  AssetsList(
      desc: 'We check each specialist before\n he starts work',
      title: 'Proven \nspecialists',
      image: 'assets/images/proven_specialist.png'),
  AssetsList(
      desc: 'We carefully check each specialist and put honest ratings',
      title: 'Honest \nratings',
      image: 'assets/images/honest_ratings.png'),
  AssetsList(
      desc: 'We insure each order for the amount\n of \$500',
      title: 'Insured \norders',
      image: 'assets/images/insured_orders.png'),
];
