import 'package:flutter/material.dart';
import 'package:flutter_online_order/screens/widgets/nav_bar.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({Key? key}) : super(key: key);

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
  @override
  Widget build(BuildContext context) {
    String dropdownvalue = '01';
    String dropdownvalueYear = '2022';
    String dropdownValue = 'One';
    final items = [
      '01',
      '02',
      '03',
      '04',
      '05',
      '07',
      '08',
      '09',
      '10',
      '11',
      '12',
    ];
    final itemsYear = [
      '2031',
      '2030',
      '2029',
      '2028',
      '2027',
      '2026',
      '2025',
      '2024',
      '2023',
      '2022',
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            const NavBar(title: 'Payment cards'),
            const SizedBox(height: 60),
            Container(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 201.26,
                  width: 314.34,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFF0284D8),
                        Color(0xFF02DA80),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 14),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              ' . . . ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'bottomFont',
                                  fontSize: 30),
                            ),
                            Text(
                              '4221',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'bottomFont',
                                  fontSize: 20),
                            ),
                            Spacer(),
                            Text(
                              '17/03  ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'bottomFont',
                                  fontSize: 19),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Text(
                          ' \$ 10000',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'bottomFont',
                              fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 42, right: 42),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Card Number',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff525464),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(color: Color(0xFFF7F7F7)),
                    height: 60,
                    width: 314.34,
                    child: TextField(
                      onTap: () {},
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 20, top: 70),
                        hintText: '**** **** ****  3454',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFB0B0C3),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Exp. Month',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff525464),
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 70,
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: DropdownButtonFormField<String>(
                              style: const TextStyle(
                                color: Color(0xFFB0B0C3),
                                fontSize: 15,
                              ),
                              value: dropdownvalue,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: items.map((items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(
                                    items,
                                    style: const TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          const Text(
                            'Exp. Year',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff525464),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            width: 70,
                            child: DropdownButtonFormField<String>(
                              elevation: 10,
                              style: const TextStyle(
                                color: Color(0xFFB0B0C3),
                                fontSize: 15,
                              ),
                              value: dropdownvalueYear,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalueYear = newValue!;
                                });
                              },
                              items: itemsYear.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(
                                    items,
                                    style: const TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          const Text(
                            'CVV',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff525464),
                            ),
                          ),
                          Container(
                            decoration:
                                const BoxDecoration(color: Color(0xFFF7F7F7)),
                            height: 60,
                            width: 70,
                            child: TextField(
                              onTap: () {},
                              decoration: const InputDecoration(
                                isDense: true,
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 10, right: 10, bottom: 20, top: 70),
                                hintText: '***  ',
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFB0B0C3),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                  const SizedBox(height: 120),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/addNewCard');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                        primary: const Color(0xFF20C3AF),
                      ),
                      child: const Text(
                        'Add new card',
                        style:
                            TextStyle(fontSize: 18, fontFamily: 'bottomFont'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
