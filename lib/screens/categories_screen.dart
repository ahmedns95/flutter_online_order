import 'package:flutter/material.dart';
import 'package:flutter_online_order/screens/widgets/back_and_next_button.dart';
import 'package:flutter_online_order/screens/widgets/nav_bar.dart';
import 'package:flutter_online_order/screens/widgets/reusable_card_categories.dart';
import 'package:flutter_online_order/screens/widgets/search_with_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            ReusableCardCategories(
                image: 'assets/icons/Furniture_icon.png',
                title: 'Furniture works',
                press: () {
                  Navigator.pushNamed(context, '/furniture');
                }),
            ReusableCardCategories(
              image: 'assets/icons/Cleaning_icon.png',
              title: 'Cleaning services',
              press: () {
                Navigator.pushNamed(context, '/furniture');
              },
            ),
            ReusableCardCategories(
              image: 'assets/icons/Equipment_icon.png',
              title: 'Equipment repair',
              press: () {},
            ),
            ReusableCardCategories(
              image: 'assets/icons/courier_icon.png',
              title: 'Courier services',
              press: () {},
            ),
            ReusableCardCategories(
              image: 'assets/icons/Interiro_icon.png',
              title: 'Interior design',
              press: () {},
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
