import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_order/view/screens/side_left_drawer.dart';
import 'package:flutter_online_order/view/screens/widgets/nav_bar.dart';

class FurnitureWorks extends StatelessWidget {
  const FurnitureWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextFormField _namekey = TextFormField();
    TextEditingController _nameController = TextEditingController();
    return Scaffold(
      body: SideLeftDrawer(
        bodyy: Form(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 60),
              const NavBar(
                title: 'Furniture Works',
              ),
              const SizedBox(height: 200),
              const Text(
                'How can we assist you ?',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shadowColor: Colors.transparent,
                  side: const BorderSide(
                    color: Color(0xFFF5F5F5),
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                  primary: const Color(0xFF20C3AF),
                ),
                child: const Text(
                  'Furniture moving',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'bottomFont',
                    color: Colors.white,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shadowColor: Colors.transparent,
                  side: const BorderSide(
                    color: Color(0xFFF5F5F5),
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                  primary: const Color(0xFF20C3AF),
                ),
                child: const Text(
                  'Furniture cleaning',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'bottomFont',
                    color: Colors.white,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shadowColor: Colors.transparent,
                  side: const BorderSide(
                    color: Color(0xFFF5F5F5),
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                  primary: const Color(0xFF20C3AF),
                ),
                child: const Text(
                  'Furniture painting',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'bottomFont',
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
