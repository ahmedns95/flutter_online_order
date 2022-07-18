import 'package:flutter/material.dart';
import 'package:flutter_online_order/widgets/nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/back_and_next_button.dart';
import '../widgets/reusable_card_categories.dart';
import '../widgets/search_with_icon.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            const NavBar(title: 'Categories'),
            const SizedBox(height: 30),
            const SearchWithIcon(hintText: 'Search by category'),
            const ReusableCardCategories(
              image: 'assets/icons/Furniture_icon.png',
              title: 'Furniture works',
            ),
            const ReusableCardCategories(
              image: 'assets/icons/Cleaning_icon.png',
              title: 'Cleaning services',
            ),
            const ReusableCardCategories(
              image: 'assets/icons/Equipment_icon.png',
              title: 'Equipment repair',
            ),
            const ReusableCardCategories(
              image: 'assets/icons/courier_icon.png',
              title: 'Courier services',
            ),
            const ReusableCardCategories(
              image: 'assets/icons/Interiro_icon.png',
              title: 'Interior design',
            ),
            const SizedBox(height: 30),
            BackAndNextButton(
                whiteButton: 'Back',
                greenButton: 'Next',
                pressBack: () {},
                pressNext: () {
                  Navigator.pushNamed(context, '/profile');
                }),
          ],
        ),
      ),
    );
  }
}
