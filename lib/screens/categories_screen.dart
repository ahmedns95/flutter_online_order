import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/back_and_next_button.dart';
import '../widgets/reusable_card_categories.dart';

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
            Row(
              children: [
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/icons/Back.svg',
                    width: 9,
                    height: 16,
                  ),
                ),
                const Spacer(),
                const Text(
                  'Categories',
                  style: TextStyle(
                      fontFamily: 'myFont',
                      fontSize: 23,
                      color: Color(0xFF525464)),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/icons/Menu.svg',
                    width: 18,
                    height: 8,
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextField(
                style: const TextStyle(),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFF7F7F7),
                  border: InputBorder.none,
                  hintText: 'Search by category',
                  suffixIcon: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: SizedBox(
                        child: SvgPicture.asset(
                          'assets/icons/Search_icon.svg',
                          alignment: Alignment.centerLeft,
                        ),
                      ),
                    ),
                  ),
                  hintStyle: const TextStyle(
                    color: Color(0xFF838391),
                  ),
                ),
              ),
            ),
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
            const SizedBox(
              height: 30,
            ),
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
